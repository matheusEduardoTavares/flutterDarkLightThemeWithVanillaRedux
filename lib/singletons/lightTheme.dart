import 'package:flutter/material.dart';

class LightTheme {
  final ThemeData themeData;
  LightTheme.initial({this.themeData});

  static final _lightTheme = LightTheme.initial(
    themeData: ThemeData(
      primaryColor: Colors.black,
      accentColor: Colors.black87,
      backgroundColor: Colors.white,
      buttonColor: Colors.black,
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.black,
        textTheme: ButtonTextTheme.normal
      ),
      scaffoldBackgroundColor: Colors.blue
    )
  );

  factory LightTheme() => _lightTheme;
}