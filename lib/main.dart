import 'package:flutter/material.dart';

import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import './Screens/main_screen.dart';
import './redux/store.dart';
import './redux/reducers.dart';

void main() {
  Store<AppState> _store = Store<AppState>(
    reducers,
    initialState: AppState.initial(),
  );
  runApp(MainApp(store: _store));
}

class MainApp extends StatelessWidget {
  final Store store;
  MainApp({this.store});
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData(
          backgroundColor: Color(0xFF3d3c3a),
          accentColor: Color(0xFF4C4646),
          buttonColor: Colors.grey[400],
        ),
        home: MainScreen(),
      ),
    );
  }
}
