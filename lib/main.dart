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
  int _totalScore = 0;
  static const _mapQuestions = [
    {
      "questionText": "What's is your favorite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 5},
        {"text": "Green", "score": 3},
        {"text": "White", "score": 1},
      ],
    },
    {
      "questionText": "What's is your favorite animals?",
      "answers": [
        {"text": "Rabbit", "score": 3},
        {"text": "Snake", "score": 11},
        {"text": "Elephant", "score": 5},
        {"text": "Lion", "score": 9},
      ],
    },
    {
      "questionText": "What's is your favorite instructor?",
      "answers": [
        {"text": "Max", "score": 1},
        {"text": "Max", "score": 1},
        {"text": "Max", "score": 1},
        {"text": "Max", "score": 1},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    /*_questionIndex =
        (_questionIndex >= mapQuestions.length) ? 0 : _questionIndex;*/
    print(_totalScore);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
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
            : Result(_totalScore, _resetQuiz), // generated type
      ), // Scaffold basic site design
    );
  }
}

void main() => runApp(MyApp()); // shorthands of one line expression
