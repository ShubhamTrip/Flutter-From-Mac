import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String quesText;
  Question(this.quesText);

  @override
  Widget build(BuildContext context) {
    return Text(quesText);
  }
}
