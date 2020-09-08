import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: Text("This is my default text!"),
      ), // Scaffold basic site design
    );
  }
}

void main() => runApp(MyApp()); // shorthands of one line expression
