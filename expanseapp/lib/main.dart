// ignore_for_file: prefer_const_constructors

import 'package:expanseapp/Models/TransCard.dart';
import 'package:expanseapp/Models/transactions.dart';
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
  List<Transactions> transactions = [
    Transactions(
        amount: 99.99, date: DateTime.now(), title: "New bag", id: "t1"),
    Transactions(
        amount: 69, date: DateTime.now(), title: "New watch", id: "t2"),
    Transactions(
        amount: 240.99, date: DateTime.now(), title: "New shoes", id: "t3")
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Card(
              child: Container(
                height: 300,
                width: double.infinity,
                color: Colors.amberAccent,
              ),
            ),
            Column(
                children: transactions
                    .map((value) => TransCard(
                          date: DateTime.now(),
                          product: value.title,
                          price: value.amount,
                        ))
                    .toList()),
            TextField()
          ],
        )),
      ),
    );
  }
}
