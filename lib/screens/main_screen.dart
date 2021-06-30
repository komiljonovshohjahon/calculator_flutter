import 'package:calculator/redux/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../widgets/top_bar.dart';
import '../widgets/calculated_number.dart';
import '../widgets/calc_pad.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          backgroundColor: state.isDark
              ? Theme.of(context).backgroundColor
              : Theme.of(context).buttonColor,
          elevation: 0.0,
          toolbarHeight: 80.0,
          centerTitle: true,
          title: TopBar(state),
        ),
        body: SafeArea(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CalculatedNumber(),
              CalcPad(),
            ],
          ),
        ),
      ),
    );
  }
}
