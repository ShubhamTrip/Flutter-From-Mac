import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final questionHandler;
  final String butText;

  AnswerButton({required this.butText, required this.questionHandler});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: ElevatedButton(
          onPressed: questionHandler,
          // Method 2..
          style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
          child: Text(butText)),
    );
  }
}
