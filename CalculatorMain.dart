import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  var Result = "";
  Widget abc(var text) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            Result = Result + text;
          });
        },
        child: Text(text));
  }

  output() {
    Parser p = Parser();
    Expression exp = p.parse(Result);
    ContextModel cn = ContextModel();
    double aval = exp.evaluate(EvaluationType.REAL, cn);
    setState(() {
      Result = aval.toString();
    });
  }

  clear() {
    setState(() {
      Result = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator Using Flutter"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Result,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                abc("1"),
                abc("2"),
                abc("3"),
                abc("4"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                abc("5"),
                abc("6"),
                abc("7"),
                abc("8"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                abc("9"),
                abc("0"),
                abc("/"),
                abc("*"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                abc("+"),
                abc("-"),
                ElevatedButton(onPressed: clear, child: Text("Clear")),
                ElevatedButton(onPressed: output, child: Text("="))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
