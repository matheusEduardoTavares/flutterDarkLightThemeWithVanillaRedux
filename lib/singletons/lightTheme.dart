import 'package:flutter/material.dart';

class LightTheme extends ThemeData {
  static final _lightTheme = ThemeData(
    primaryColor: Colors.black,
    accentColor: Colors.black87,
    backgroundColor: Colors.white,
    buttonColor: Colors.black,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.black,
      textTheme: ButtonTextTheme.normal
    )
  );

  factory LightTheme() => _lightTheme;
}