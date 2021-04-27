import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Widget calculatorButton(
    String btnText, Color btnColor, Color btnTextColor, onPressed) {
  return Container(
    // ignore: deprecated_member_use
    child: RaisedButton(
      onPressed: onPressed,
      child: Text(
        btnText,
        style: TextStyle(fontSize: 30.0, color: btnTextColor),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: btnColor,
      padding: EdgeInsets.all(20),
      // @todo Button
    ),
  );
}
