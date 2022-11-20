// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../Models/transactions.dart';
import 'TransCard.dart';

class TransactionList extends StatelessWidget {
  List<Transactions> transactions;
  TransactionList({required this.transactions});
  @override
  Widget build(BuildContext context) {
    return Column(
        children: transactions
            .map((value) => TransCard(
                  date: DateTime.now(),
                  product: value.title,
                  price: value.amount,
                ))
            .toList());
  }
}
