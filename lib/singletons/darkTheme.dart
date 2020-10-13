import 'package:flutter/material.dart';

class DarkTheme extends ThemeData {
  static final _darkTheme = ThemeData(
    primaryColor: Colors.white,
    accentColor: Colors.white70,
    backgroundColor: Colors.black,
    buttonColor: Colors.white,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.white,
      textTheme: ButtonTextTheme.normal
    )
  );

  factory DarkTheme() => _darkTheme;
}