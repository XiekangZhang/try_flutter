import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
// updates however state should be preserved.
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    _questionIndex = (_questionIndex > 2) ? 0 : _questionIndex;
    //print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // data structure: list, enum, map
    /*List<String> questions = [
      "What's is your favorite color?",
      "What's is your favorite animals?"
    ];*/

    var mapQuestions = [
      {
        "questionText": "What's is your favorite color?",
        "answers": ["Black", "Red", "Green", "White"],
      },
      {
        "questionText": "What's is your favorite animals?",
        "answers": ["Rabbit", "Snake", "Elephant", "Lion"],
      },
      {
        "questionText": "What's is your favorite instructor?",
        "answers": ["Max", "Max", "Max", "Max"],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: Column(
          children: <Widget>[
            Question(mapQuestions[_questionIndex]["questionText"]),
            // add values to a list
            ...(mapQuestions[_questionIndex]["answers"] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ), // generated type
      ), // Scaffold basic site design
    );
  }
}

void main() => runApp(MyApp()); // shorthands of one line expression
