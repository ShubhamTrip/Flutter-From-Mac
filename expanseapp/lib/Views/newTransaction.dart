// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../Models/transactions.dart';

class NewTransaction extends StatefulWidget {
  List<Transactions> transactions;

  NewTransaction({required this.transactions});

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final addtitle = TextEditingController();
  TextEditingController addprice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
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
                    // transaction.add(Transactions(
                    //     amount: double.parse(addprice.text),
                    //     date: DateTime.now(),
                    //     title: addtitle.text));
                  });
                },
                child: Text("Add Item"))
          ],
        ),
      ),
    );
  }
}
