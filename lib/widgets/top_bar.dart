import 'package:calculator/redux/actions.dart';
import 'package:calculator/redux/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class TopBar extends StatelessWidget {
  AppState state;

  TopBar(this.state);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      height: 50.0,
      decoration: BoxDecoration(
        color: state.isDark
            ? Theme.of(context).accentColor
            : Theme.of(context).accentColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: StoreConnector<AppState, Function>(
        converter: (store) {
          return () => store.dispatch(ToogleIsDarkAction);
        },
        builder: (context, callback) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              icon: state.isDark
                  ? Icon(
                      Icons.wb_sunny_outlined,
                      color: Colors.white.withOpacity(0.2),
                    )
                  : Icon(
                      Icons.wb_sunny,
                    ),
              onPressed: callback,
            ),
            IconButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              icon: state.isDark
                  ? Icon(
                      Icons.nights_stay_rounded,
                    )
                  : Icon(
                      Icons.nights_stay_outlined,
                      color: Colors.black.withOpacity(0.3),
                    ),
              onPressed: callback,
            ),
          ],
        ),
      ),
    );
  }
}
