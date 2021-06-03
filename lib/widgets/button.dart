import 'package:calculator_app/providers/input_ouput_helpers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Button extends StatelessWidget {
  final Icon icon;
  Function button_function;

  Button({required this.icon, required this.button_function});

  @override
  Widget build(BuildContext context) {
    final ioh = Provider.of<InputOutputHelpers>(context);
    return Container(
      padding: EdgeInsets.all(2.0),
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      width: 88,
      height: 66,
      child: Center(
        child: IconButton(
          icon: icon,
          onPressed: () => ioh.equalsTo(), //intensionaly hardcoding to test functions. (as contructor function not working.)
          iconSize: 50,
          color: Theme.of(context).primaryColorDark,
        ),
      ),
    );
  }
}
