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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "0",
                    style: TextStyle(color: Colors.black, fontSize: 70),
                    textAlign: TextAlign.left,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
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
    ),
  );
}
