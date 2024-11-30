import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/country_prvd.dart';
import '../widgets/country_tile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    // Fetching countries after widget build is complete
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<CountryProvider>(context, listen: false).fetchCountries();
    });
  }

  @override
  Widget build(BuildContext context) {
    final countryProvider = Provider.of<CountryProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('GlobalWise - Explore the World'),
        centerTitle: true,
      ),
      body: countryProvider.isLoading
          ? Center(child: CircularProgressIndicator()) // Show loading indicator
          : countryProvider.countries.isEmpty
              ? Center(
                  child:
                      Text('No countries available.')) // If no countries found
              : ListView.builder(
                  itemCount: countryProvider.countries.length,
                  itemBuilder: (context, index) {
                    final country = countryProvider.countries[index];
                    return CountryTile(country: country);
                  },
                ),
    );
  }
}
