import 'package:appTheme/singletons/lightTheme.dart';
import 'package:flutter/material.dart';

class AppState {
  final ThemeData theme;

  AppState({@required this.theme});

  factory AppState.initialState() {
    return AppState(
      theme: LightTheme().themeData
    );
  }

  AppState copyWith({ThemeData theme}) {
    return AppState(
      theme: theme ?? this.theme
    );
  }
}