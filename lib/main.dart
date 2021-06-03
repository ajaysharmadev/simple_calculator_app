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
                    callback: () {
                      //clear function
                      ioh.clear();
                    }),
                Button(
                    icon: Icon(Mdi.numeric7),
                    callback: () {
                      //numeric7 function
                      ioh.numeric7();
                    }),
                Button(
                    icon: Icon(Mdi.numeric4),
                    callback: () {
                      //numeric4 function
                      ioh.numeric4();
                    }),
                Button(
                    icon: Icon(Mdi.numeric1),
                    callback: () {
                      //numeric1 function
                      ioh.numeric1();
                    }),
                Button(
                    icon: Icon(Mdi.plusMinus),
                    callback: () {
                      //plusminus function
                      ioh.plusMinus();
                    })
              ],
            ),
            Column(
              children: <Widget>[
                Button(
                    icon: Icon(Mdi.pi),
                    callback: () {
                      //pi function
                      ioh.pi();
                    }),
                Button(
                    icon: Icon(Mdi.numeric8),
                    callback: () {
                      //numeric8 function
                      ioh.numeric8();
                    }),
                Button(
                    icon: Icon(Mdi.numeric5),
                    callback: () {
                      //numeric5 function
                      ioh.numeric5();
                    }),
                Button(
                    icon: Icon(Mdi.numeric2),
                    callback: () {
                      //numeric2 function
                      ioh.numeric2();
                    }),
                Button(
                    icon: Icon(Mdi.numeric0),
                    callback: () {
                      //numeric0 function
                      ioh.numeric0();
                    })
              ],
            ),
            Column(
              children: <Widget>[
                Button(
                    icon: Icon(Mdi.backspace),
                    callback: () {
                      //backspace function
                      ioh.backspace();
                    }),
                Button(
                    icon: Icon(Mdi.numeric9),
                    callback: () {
                      //numeric9 function
                      ioh.numeric9();
                    }),
                Button(
                    icon: Icon(Mdi.numeric6),
                    callback: () {
                      //numeric6 function
                      ioh.numeric6();
                    }),
                Button(
                    icon: Icon(Mdi.numeric3),
                    callback: () {
                      //numeric3 function
                      ioh.numeric3();
                    }),
                Button(
                    icon: Icon(Mdi.circleSmall),
                    callback: () {
                      //point function
                      ioh.point();
                    })
              ],
            ),
            Column(
              children: <Widget>[
                Button(
                    icon: Icon(Mdi.slashForwardBox),
                    callback: () {
                      //divide function
                      ioh.divide();
                    }),
                Button(
                    icon: Icon(Mdi.closeBox),
                    callback: () {
                      //multiply function
                      ioh.multiply();
                    }),
                Button(
                    icon: Icon(Mdi.minusBox),
                    callback: () {
                      //minusplus function
                      ioh.minus();
                      print('-');
                    }),
                    //more clean way to pass void function callbacks.
                Button(icon: Icon(Mdi.plusBox), callback: ioh.plus),
                Button(icon: Icon(Mdi.equalBox), callback: ioh.equalsTo)
              ],
            )
          ])
        ],
      ),
    );
  }
}
