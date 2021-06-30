import 'package:calculator/widgets/button.dart';
import 'package:flutter/material.dart';

class CalcPad extends StatelessWidget {
  List<Widget> _items = [
    Button("clear"),
    Button(7),
    Button(4),
    Button(1),
    Button("reset"),
    Button("plus_minus"),
    Button(8),
    Button(5),
    Button(2),
    Button(0),
    Button("percent"),
    Button(9),
    Button(6),
    Button(3),
    Button("dot"),
    Button("divide"),
    Button("multiply"),
    Button("subtract"),
    Button("add"),
    Button("equal"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25.0),
          topLeft: Radius.circular(25.0),
        ),
        color: Theme.of(context).accentColor,
      ),
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Wrap(
        spacing: 20.0,
        runSpacing: 20.0,
        direction: Axis.vertical,
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        children: _items,
      ),
    );
  }
}
