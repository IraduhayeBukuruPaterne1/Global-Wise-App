import 'package:flutter/material.dart';

class AppConstants {
  // Choosen Colors
  static const Color primaryColor = Color(0xFF007BFF);
  static const Color secondaryColor = Color(0xFF1D3557);
  static const Color backgroundColor = Color(0xFFF5F5F5);
  static const Color accentColor = Color(0xFFE63946);

  // Main Font Styles
  static const TextStyle headlineStyle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: secondaryColor,
  );

  static const TextStyle subtitleStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: Colors.black54,
  );

  static const TextStyle bodyStyle = TextStyle(
    fontSize: 14.0,
    color: Colors.black87,
  );

  // API Constant
  static const String countryApiUrl = "https://restcountries.com/v3.1/all";

  // Paddings and Margins
  static const EdgeInsets defaultPadding = EdgeInsets.all(16.0);
  static const EdgeInsets cardPadding =
      EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0);
}
