import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/country_mdl.dart';
import '../utils/api_helper.dart';

class CountryProvider with ChangeNotifier {
  List<Country> _countries = [];
  bool _isLoading = false;

  List<Country> get countries => _countries;
  bool get isLoading => _isLoading;

  // Fetching countries from the API
  Future<void> fetchCountries() async {
    _isLoading = true;
    notifyListeners();
    try {
      await loadCachedCountries(); // Loading cached countries before making the API request
      final response = await ApiHelper.fetchCountries();
      _countries =
          response.map<Country>((data) => Country.fromJson(data)).toList();
      await cacheCountries(_countries); // Caching fetched countries
    } catch (error) {
      debugPrint('Error fetching countries: $error');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // Caching countries details
  Future<void> cacheCountries(List<Country> countries) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonCountries =
        countries.map((country) => json.encode(country.toJson())).toList();
    await prefs.setStringList('cached_countries', jsonCountries);
  }

  // Loading countries from cache
  Future<void> loadCachedCountries() async {
    final prefs = await SharedPreferences.getInstance();
    final cachedData = prefs.getStringList('cached_countries');
    if (cachedData != null) {
      _countries =
          cachedData.map((json) => Country.fromJson(jsonDecode(json))).toList();
      notifyListeners();
    }
  }

  // Filtering countries based on their region
  void filterCountries(String region) {
    _countries =
        _countries.where((country) => country.region == region).toList();
    notifyListeners();
  }

  // Sort countries alphabetically
  void sortCountriesAlphabetically() {
    _countries.sort((a, b) => a.name.compareTo(b.name));
    notifyListeners();
  }

  // Reset the country list to the original list
  void resetCountryList() {
    loadCachedCountries();
    notifyListeners();
  }
}
