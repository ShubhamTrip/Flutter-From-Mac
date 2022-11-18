// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final questionHandler;
  final String butText;

  AnswerButton({required this.butText, required this.questionHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
          onPressed: questionHandler,
          // Method 2..
          style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
          child: Text(butText)),
    );
  }
}
