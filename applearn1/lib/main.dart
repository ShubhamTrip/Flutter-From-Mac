// ignore_for_file: prefer_const_constructors

import 'package:applearn1/Quiz.dart';
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
  int count = 0;
  var questions = [
    {
      'questionText': 'What is yours name?',
      'answer': [
        {'score': 30, 'text': 'Option 1'},
        {'score': 20, 'text': 'Option 2'},
        {'score': 10, 'text': 'Option 3'}
      ]
    },
    {
      'questionText': 'Are you fine?',
      'answer': [
        {'score': 50, 'text': 'Options 1'},
        {'score': 20, 'text': 'Options 2'}
      ]
    },
    {
      'questionText': 'Is everything fine?',
      'answer': [
        {'score': 20, 'text': 'Option 1'},
        {'score': 10, 'text': 'Option 2'},
        {'score': 40, 'text': 'Option 3'}
      ]
    }
  ];
  var index = 0;
  changeQues(int sc) {
    setState(() {
      index++;
      count += sc;
    });
  }

  restart() {
    setState(() {
      index = 0;
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
              child: (index < questions.length)
                  ? Quiz(
                      index: index,
                      lst: questions,
                      change: changeQues,
                    )
                  : Column(
                      children: [
                        SizedBox(height: 300),
                        Text('Your total score is $count'),
                        SizedBox(height: 40),
                        ElevatedButton(
                          onPressed: restart,
                          child: Text('Restart'),
                        )
                      ],
                    )),
        ),
      ),
    );
  }
}
