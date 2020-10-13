import 'package:appTheme/reduxVanilla/appState.dart';
import 'package:appTheme/reduxVanilla/reducers.dart';
import 'package:redux/redux.dart';

Store<AppState> appStore = Store<AppState>(
  appReducer,
  initialState: AppState.initialState()
);