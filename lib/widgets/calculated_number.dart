import 'package:calculator/redux/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class CalculatedNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) => Container(
        width: double.infinity,
        height: double.infinity,
        color: state.isDark
            ? Theme.of(context).backgroundColor
            : Theme.of(context).buttonColor,
        padding: EdgeInsets.only(
          top: 60.0,
          right: 30.0,
          left: 30.0,
        ),
        alignment: Alignment.topRight,
        child: RichText(
          textAlign: TextAlign.right,
          text: TextSpan(
            children: [
              TextSpan(
                text: "${state.first} + ${state.second}\n",
                style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: "${state.sum}",
                style: TextStyle(
                  fontSize: 40.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
