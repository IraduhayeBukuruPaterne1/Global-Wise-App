import 'package:flutter/material.dart';

import '../models/country_mdl.dart';
import '../utils/constants.dart';

class CountryTile extends StatelessWidget {
  final Country country;

  const CountryTile({Key? key, required this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: AppConstants.cardPadding,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(country.flagUrl),
          radius: 25,
        ),
        title: Text(
          country.name,
          style: AppConstants.headlineStyle.copyWith(fontSize: 18.0),
        ),
        subtitle: Text(
          'Region: ${country.region}',
          style: AppConstants.subtitleStyle,
        ),
        onTap: () {
          // Navigating to the Country Details Screen
          Navigator.pushNamed(
            context,
            '/country-details',
            arguments:
                country, // Passing the selected country to the details screen
          );
        },
      ),
    );
  }
}
