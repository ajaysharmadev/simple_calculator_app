import 'package:flutter/material.dart';
import 'dart:math' as Math;
import 'package:math_expressions/math_expressions.dart';

class InputOutputHelpers with ChangeNotifier {
  num _result = 0.0;
  num get result => _result;

  String _expression = '';
  String get expression => _expression;
  set setExpression(String newExpression) {
    this._expression = this._expression + newExpression;
    notifyListeners();
  }

  void numeric0() {
    _expression = _expression + '0';
    notifyListeners();
  }

  void numeric1() {
    _expression = _expression + '1';
    notifyListeners();
  }

  void numeric2() {
    _expression = _expression + '2';
    notifyListeners();
  }

  void numeric3() {
    _expression = _expression + '3';
    notifyListeners();
  }

  void numeric4() {
    _expression = _expression + '4';
    notifyListeners();
  }

  void numeric5() {
    _expression = _expression + '5';
    notifyListeners();
  }

  void numeric6() {
    _expression = _expression + '6';
    notifyListeners();
  }

  void numeric7() {
    _expression = _expression + '7';
    notifyListeners();
  }

  void numeric8() {
    _expression = _expression + '8';
    notifyListeners();
  }

  void numeric9() {
    _expression = _expression + '9';
    notifyListeners();
  }

  void plus() {
    _expression = _expression + '+';
    notifyListeners();
  }

  void divide() {
    _expression = _expression + '/';
    notifyListeners();
  }

  void multiply() {
    _expression = _expression + '*';
    notifyListeners();
  }

  void minus() {
    _expression = _expression + '-';
    notifyListeners();
  }

  void point() {
    _expression = _expression + '.';
    notifyListeners();
  }

  void plusMinus() {
    if (_expression[0] == '-') {
      //slicing
      _expression = _expression.substring(2,_expression.length-1);
    } else {
      _expression = '-(' + _expression + ')';
    }
    notifyListeners();
  }

  void pi() {
    _expression = _expression + 'pi';
    notifyListeners();
  }

  void clear() {
    _expression = '';
    _result = 0.0;
    notifyListeners();
  }

  void backspace() {
    _expression = _expression.substring(0, _expression.length - 1);
    notifyListeners();
  }

  void equalsTo() {
    Variable pi = Variable('pi');
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    cm.bindVariable(pi, Number(3.141592653589793238));
    double eval =
        double.parse(exp.evaluate(EvaluationType.REAL, cm).toStringAsFixed(4));
    _result = eval;
    notifyListeners();
  }
}
//Bracket function is remaining
