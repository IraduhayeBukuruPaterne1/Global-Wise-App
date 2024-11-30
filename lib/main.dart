import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/country_prvd.dart';
import 'screens/country_details.dart';
import 'screens/home.dart';

void main() {
  runApp(GlobalWiseApp());
}

class GlobalWiseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CountryProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GlobalWise',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/country-details': (context) => CountryDetailsScreen(),
        },
      ),
    );
  }
}
