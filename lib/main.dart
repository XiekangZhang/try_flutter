import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
// updates however state should be preserved.
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  static const _mapQuestions = [
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

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    /*_questionIndex =
        (_questionIndex >= mapQuestions.length) ? 0 : _questionIndex;*/
    //print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // data structure: list, enum, map
    /*List<String> questions = [
      "What's is your favorite color?",
      "What's is your favorite animals?"
    ];*/

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: (_questionIndex < _mapQuestions.length)
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _mapQuestions,
                questionIndex: _questionIndex,
              )
            : Result(), // generated type
      ), // Scaffold basic site design
    );
  }
}

void main() => runApp(MyApp()); // shorthands of one line expression
