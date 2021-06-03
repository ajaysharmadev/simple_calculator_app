import 'package:calculator_app/widgets/calculator_screen.dart';
import 'package:flutter/material.dart';
import './widgets/button.dart';
import 'package:mdi/mdi.dart';
import 'package:provider/provider.dart';
import './providers/input_ouput_helpers.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => InputOutputHelpers()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calcultor',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Simple Calculator App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final ioh = Provider.of<InputOutputHelpers>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          //Screen Widget
          CalculatorScreen(),
          //Button Containers
          Row(children: <Widget>[
            Column(
              children: <Widget>[
                Button(
                    icon: Icon(Mdi.alphaC),
                    button_function: () {
                      //Cancel function
                    }),
                Button(
                    icon: Icon(Mdi.numeric7),
                    button_function: () {
                      //Cancel function
                    }),
                Button(
                    icon: Icon(Mdi.numeric4),
                    button_function: () {
                      //Cancel function
                    }),
                Button(
                    icon: Icon(Mdi.numeric1),
                    button_function: () {
                      print('1');
                      setState(() {
                        ioh.setExpression = '+';
                      });
                    }),
                Button(
                    icon: Icon(Mdi.plusMinus),
                    button_function: () {
                      print('object');
                    })
              ],
            ),
            Column(
              children: <Widget>[
                Button(
                    icon: Icon(Mdi.pi),
                    button_function: () {
                      //Cancel function
                    }),
                Button(
                    icon: Icon(Mdi.numeric8),
                    button_function: () {
                      //Cancel function
                    }),
                Button(
                    icon: Icon(Mdi.numeric5),
                    button_function: () {
                      //Cancel function
                    }),
                Button(
                    icon: Icon(Mdi.numeric2),
                    button_function: () {
                      //Cancel function
                    }),
                Button(
                    icon: Icon(Mdi.numeric0),
                    button_function: () {
                      //Cancel function
                    })
              ],
            ),
            Column(
              children: <Widget>[
                Button(
                    icon: Icon(Mdi.backspace),
                    button_function: () {
                      //Cancel function
                    }),
                Button(
                    icon: Icon(Mdi.numeric9),
                    button_function: () {
                      //Cancel function
                    }),
                Button(
                    icon: Icon(Mdi.numeric6),
                    button_function: () {
                      //Cancel function
                    }),
                Button(
                    icon: Icon(Mdi.numeric3),
                    button_function: () {
                      //Cancel function
                    }),
                Button(
                    icon: Icon(Mdi.circleSmall),
                    button_function: () {
                      //Cancel function
                    })
              ],
            ),
            Column(
              children: <Widget>[
                Button(
                    icon: Icon(Mdi.slashForwardBox),
                    button_function: () {
                      //Cancel function
                    }),
                Button(
                    icon: Icon(Mdi.closeBox),
                    button_function: () {
                      //Cancel function
                    }),
                Button(
                    icon: Icon(Mdi.minusBox),
                    button_function: () {
                      //Cancel function
                    }),
                Button(icon: Icon(Mdi.plusBox), button_function: ioh.plus),
                Button(icon: Icon(Mdi.equalBox), button_function: ioh.equalsTo)
              ],
            )
          ])
        ],
      ),
    );
  }
}
