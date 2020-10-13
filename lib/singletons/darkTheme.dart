import 'package:flutter/material.dart';

class DarkTheme {
  final ThemeData themeData;
  DarkTheme.initial({this.themeData});

  static final _darkTheme = DarkTheme.initial(
    themeData: ThemeData(
      primaryColor: Colors.white,
      accentColor: Colors.white70,
      backgroundColor: Colors.black,
      buttonColor: Colors.white,
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.white,
        textTheme: ButtonTextTheme.normal
      ),
      scaffoldBackgroundColor: Colors.grey
    )
  );

  factory DarkTheme() => _darkTheme;
}