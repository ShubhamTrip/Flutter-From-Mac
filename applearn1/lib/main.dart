// ignore_for_file: prefer_const_constructors

import 'package:applearn1/answerButton.dart';
import 'package:applearn1/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  var questions = [
    {
      'questionText': 'What is yours name?',
      'answer': ['Option 1', 'Option 2', 'Option 3']
    },
    {
      'questionText': 'Are you fine?',
      'answer': ['Option 1', 'Option 2', 'Option 3']
    },
    {
      'questionText': 'Is everything fine?',
      'answer': ['Option 1', 'Option 2']
    }
  ];
  var index = 0;
  changeQues() {
    setState(() {
      if (index < questions.length - 1) index++;
    });
  }

  lastOues() {
    setState(() {
      if (index > 0) index--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Question('${questions[index]['questionText']}'),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...(questions[index]['answer'] as List<String>).map((ans) {
                    return AnswerButton(
                      butText: ans,
                      questionHandler: changeQues,
                    );
                  })
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
