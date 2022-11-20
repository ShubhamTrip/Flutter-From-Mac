// ignore_for_file: camel_case_types

import 'package:expanseapp/Views/TransactionList.dart';
import 'package:expanseapp/Views/newTransaction.dart';
import 'package:flutter/material.dart';

import '../Models/transactions.dart';

class usrTransactions extends StatefulWidget {
  const usrTransactions({super.key});

  @override
  State<usrTransactions> createState() => _usrTransactionsState();
}

class _usrTransactionsState extends State<usrTransactions> {
  List<Transactions> transactions = [
    Transactions(amount: 99.99, date: DateTime.now(), title: "New bag"),
    Transactions(amount: 69, date: DateTime.now(), title: "New watch"),
    Transactions(amount: 240.99, date: DateTime.now(), title: "New shoes")
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(
          transactions: transactions,
        ),
        TransactionList(transactions: transactions)
      ],
    );
  }
}
