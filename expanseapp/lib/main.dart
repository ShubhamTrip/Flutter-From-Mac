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
  TextEditingController addtitle = TextEditingController();
  TextEditingController addprice = TextEditingController();

  List<Transactions> transactions = [
    Transactions(amount: '99.99', date: DateTime.now(), title: "New bag"),
    Transactions(amount: '69', date: DateTime.now(), title: "New watch"),
    Transactions(amount: '240.99', date: DateTime.now(), title: "New shoes")
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
                padding: EdgeInsets.all(40),
                height: 300,
                width: double.infinity,
                color: Colors.amberAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextField(
                      controller: addtitle,
                      decoration: InputDecoration(labelText: 'Product'),
                    ),
                    TextField(
                      controller: addprice,
                      decoration: InputDecoration(labelText: 'Amount'),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            transactions.add(Transactions(
                                amount: addprice.text,
                                date: DateTime.now(),
                                title: addtitle.text));
                          });
                        },
                        child: Text("Add Item"))
                  ],
                ),
              ),
            ),
            Column(
                children: transactions
                    .map((value) => TransCard(
                          date: DateTime.now(),
                          product: value.title,
                          price: value.amount,
                        ))
                    .toList())
          ],
        )),
      ),
    );
  }
}
