import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qtext;

  Question(this.qtext);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: RichText(
        text: TextSpan(
          text: qtext,
          style: TextStyle(
            color: Theme.of(context).accentColor,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
