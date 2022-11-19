// ignore_for_file: use_key_in_widget_constructors

import 'package:applearn1/answerButton.dart';
import 'package:applearn1/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final Function change;
  final List<Map<String, Object>> lst;
  final int index;
  Quiz({required this.change, required this.lst, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question('${lst[index]['questionText']}'),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...(lst[index]['answer'] as List<String>).map((ans) {
              return AnswerButton(
                butText: ans,
                questionHandler: change,
              );
            })
          ],
        )
      ],
    );
  }
}
