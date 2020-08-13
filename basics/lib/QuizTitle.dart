import 'package:flutter/material.dart';

class QuizTitle extends StatelessWidget {
  const QuizTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      color: Colors.blue[50],
      child: Text(
        'Quiz Game',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          fontFamily: 'Verdana',
        ),
      ),
    );
  }
}
