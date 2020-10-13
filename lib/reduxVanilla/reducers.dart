import 'package:flutter/material.dart';
import 'package:appTheme/reduxVanilla/actions.dart';
import 'package:appTheme/reduxVanilla/appState.dart';
import 'package:appTheme/singletons/darkTheme.dart';
import 'package:appTheme/singletons/lightTheme.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is ChangeTheme) {
    return state.copyWith(
      theme: state.theme.backgroundColor == Colors.black ? LightTheme().themeData : DarkTheme().themeData
    );
  }

  return state;
}