import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiHelper {
  static const String countriesUrl = "https://restcountries.com/v3.1/all";

  /// Fetching the list of countries from the API
  static Future<List<dynamic>> fetchCountries() async {
    try {
      final response = await http.get(Uri.parse(countriesUrl));

      if (response.statusCode == 200) {
        return json
            .decode(response.body); // Returning the response body as a List
      } else {
        throw Exception('Failed to load countries: ${response.reasonPhrase}');
      }
    } catch (e) {
      // Error message
      print("Error fetching countries: $e");
      throw Exception('Error fetching countries: $e');
    }
  }
}
