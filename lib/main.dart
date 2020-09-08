import 'package:flutter/material.dart';
import 'question.dart';

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
    print("Answer 1 is chosen!");
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      "What's is your favorite color?",
      "What's is your favorite animals?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestion, // pass a pointer to the onPressed
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () {
                print("Answer 2 is chosen");
              },
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () => print("Answer 3 is chosen"),
            )
          ],
        ), // generated type
      ), // Scaffold basic site design
    );
  }
}

void main() => runApp(MyApp()); // shorthands of one line expression

