// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../Models/transactions.dart';
import 'TransCard.dart';

class TransactionList extends StatelessWidget {
  List<Transactions> transactions;
  TransactionList({required this.transactions});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      child: ListView.builder(
          itemCount: transactions.length,
          itemBuilder: (context, index) {
            return TransCard(
                product: transactions[index].title,
                date: transactions[index].date,
                price: transactions[index].amount);
          }),
    );
  }
}

//Column(
    //     children: transactions
    //         .map((value) => TransCard(
    //               date: DateTime.now(),
    //               product: value.title,
    //               price: value.amount,
    //             ))
    //         .toList());