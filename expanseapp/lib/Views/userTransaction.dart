// ignore_for_file: camel_case_types, use_key_in_widget_constructors

import 'package:expanseapp/Views/TransactionList.dart';
import 'package:flutter/material.dart';

import '../Models/transactions.dart';

class usrTransactions extends StatelessWidget {
  List<Transactions> trans;

  usrTransactions({required this.trans});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TransactionList(transactions: trans)],
    );
  }
}
