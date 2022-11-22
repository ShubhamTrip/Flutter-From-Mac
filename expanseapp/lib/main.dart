// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:expanseapp/Components/Chart.dart';
import 'package:expanseapp/Views/newTransaction.dart';
import 'package:expanseapp/Views/userTransaction.dart';
import 'package:flutter/material.dart';

import 'Models/transactions.dart';

void main() {
  runApp(MaterialApp(
    home: Main(),
  ));
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final List<Transactions> transactions = [
    Transactions(amount: 99.99, date: DateTime.now(), title: "New bag"),
    Transactions(amount: 69, date: DateTime.now(), title: "New watch"),
    Transactions(amount: 240.99, date: DateTime.now(), title: "New shoes")
  ];

  void addTrans(String txTitle, double txAmount) {
    final newTx = Transactions(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
    );

    setState(() {
      transactions.add(newTx);
    });
  }

  void _addNewTransPage(BuildContext cxt) {
    showModalBottomSheet(
        backgroundColor: Colors.blueGrey[300],
        builder: (BuildContext context) {
          return NewTransaction(txfunc: addTrans);
        },
        context: cxt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanse App"),
        actions: [
          IconButton(
              onPressed: () => _addNewTransPage(context), icon: Icon(Icons.add))
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [Chart(), usrTransactions(trans: transactions)],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addNewTransPage(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
