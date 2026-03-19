import 'package:flutter/material.dart';

class AppTheme {
  static final themeData = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
    appBarTheme: AppBarTheme(),

    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'ComingSoon-Regular',
      ),
      displayMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
      displayLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.red),
      ),
    ),
  );
}
