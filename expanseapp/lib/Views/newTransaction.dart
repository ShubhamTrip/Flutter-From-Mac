// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../Models/transactions.dart';

class NewTransaction extends StatelessWidget {
  final Function txfunc;

  NewTransaction({required this.txfunc});

  TextEditingController addtitle = TextEditingController();

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
                  txfunc(addtitle.text, double.parse(addprice.text));
                },
                child: Text("Add Item"))
          ],
        ),
      ),
    );
  }
}
