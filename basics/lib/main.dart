import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import './question.dart';
import './QuizTitle.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var _questions = [
    'What\'s your favorite \n football team?',
    'What\'s your favorite sport?',
    'What\'s your favorite color?',
    'What\'s your favorite pet?',
  ];

  void answerQuestion() {
    setState(() {
      _questionIndex = (_questionIndex + 1) % _questions.length;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Question & Answers'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              QuizTitle(),
              Question(_questions[_questionIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2 chosen!'),
              ),
              RaisedButton(
                child: Text(nouns.take(1000).elementAt(Random().nextInt(999))),
                onPressed: () {
                  // ...
                  print('Answer 3 chosen');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
