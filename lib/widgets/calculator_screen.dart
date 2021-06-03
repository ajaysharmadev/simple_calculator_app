import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/input_ouput_helpers.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    final ioh = Provider.of<InputOutputHelpers>(context);
    
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(10),
      width: 392,
      height: 262,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              width: 392,
              child: Text(
                ioh.expression,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(),
              ),
            ),
          ),
          Text(
            '= ${ioh.result}',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 45, color: Theme.of(context).primaryColorDark),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(),
      ),
    );
  }
}
