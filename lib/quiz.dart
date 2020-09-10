import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(this.questions[this.questionIndex]["questionText"]),
        // add values to a list
        ...(this.questions[this.questionIndex]["answers"] as List<String>)
            .map((answer) {
          return Answer(this.answerQuestion, answer);
        }).toList(),
        // a list has map function, but map gives a iterable back not a list, spread operator: ... put all element out of a list
      ],
    );
  }
}
