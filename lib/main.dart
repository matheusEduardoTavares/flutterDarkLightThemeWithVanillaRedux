import 'package:appTheme/reduxVanilla/actions.dart';
import 'package:appTheme/reduxVanilla/appState.dart';
import 'package:appTheme/reduxVanilla/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'AppTheme',
      home: StoreProvider(
        store: appStore,
        child: Home()
      )
    )
  );
}

ThemeData current;

class Home extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ThemeData>(
      converter: (store) => store.state.theme,
      builder: (context, theme) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Title', style: TextStyle(color: theme.primaryColor)),
            centerTitle: true,
            backgroundColor: theme.scaffoldBackgroundColor,
          ),
          backgroundColor: theme.backgroundColor,
          body: Center(
            child: Text('Center', style: TextStyle(color: theme.primaryColor)),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.track_changes, color: theme.backgroundColor,),
            onPressed: () {
              StoreProvider.of<AppState>(context)
                .dispatch(ChangeTheme());
            },
            backgroundColor: theme.buttonColor,
          ),
        );
      }
    );
  }
}