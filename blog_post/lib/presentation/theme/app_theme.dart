import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get appTheme => _appTheme;
  static final ThemeData _appTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    bottomNavigationBarTheme: _bottomNavigationBarThemeData,
    elevatedButtonTheme: _elevatedButtonThemeData,
    progressIndicatorTheme: _progressIndicatorThemeData,
    appBarTheme: _appBarTheme,
  );

  static final AppBarTheme _appBarTheme = AppBarTheme(backgroundColor: Colors.indigoAccent);

  static final ProgressIndicatorThemeData _progressIndicatorThemeData =
      ProgressIndicatorThemeData(
    color: Colors.white70,
  );

  static final ElevatedButtonThemeData _elevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.indigoAccent,
      onPrimary: Colors.indigoAccent,
      fixedSize: const Size(double.maxFinite, 44),
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  static final BottomNavigationBarThemeData _bottomNavigationBarThemeData =
      BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.grey.shade500,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
  );
}
