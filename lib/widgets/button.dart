import 'package:calculator/redux/actions.dart';
import 'package:calculator/redux/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class Button extends StatelessWidget {
  final dynamic val;

  Widget _identifier(dynamic value, BuildContext context) {
    Widget vall;
    if (value == 'clear') {
      vall = InkWell(
        onTap: () {
          print("A/C");
          StoreProvider.of<AppState>(context).dispatch(ClearAction);
        },
        child: Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
          alignment: Alignment.center,
          child: Text(
            "A/C",
            style: TextStyle(
              color: Colors.green[500],
            ),
          ),
        ),
      );
    } else {
      vall = InkWell(
        onTap: () {
          StoreProvider.of<AppState>(context)
              .dispatch(ChangeFirstAction(value));
        },
        child: Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
          alignment: Alignment.center,
          child: Text(
            "${value.toString()}",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      );
    }
    return vall;
  }

  Button(this.val);
  @override
  Widget build(BuildContext context) {
    return _identifier(val, context);
  }
}
