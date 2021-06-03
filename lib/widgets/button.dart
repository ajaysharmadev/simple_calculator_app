
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Icon icon;
  final VoidCallback callback;

  Button({required this.icon, required this.callback});

  @override
  Widget build(BuildContext context) {
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
          onPressed: callback, 
          iconSize: 50,
          color: Theme.of(context).primaryColorDark,
        ),
      ),
    );
  }
}
