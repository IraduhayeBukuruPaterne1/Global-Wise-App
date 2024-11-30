import 'package:flutter/material.dart';

import '../models/country_mdl.dart';

class CountryDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final country = ModalRoute.of(context)?.settings.arguments as Country;

    return Scaffold(
      appBar: AppBar(title: Text(country.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // passing country details
            Text('Capital: ${country.capital}'),
            Text('Population: ${country.population}'),
            Text('Languages: ${country.languages.join(', ')}'),
            Text('Currency: ${country.currency}'),
            Image.network(country.flagUrl),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
