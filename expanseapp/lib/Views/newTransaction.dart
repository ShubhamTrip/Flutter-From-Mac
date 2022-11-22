// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function txfunc;

  NewTransaction({required this.txfunc});

  TextEditingController addtitle = TextEditingController();

  TextEditingController addprice = TextEditingController();

  void onSubmit() {
    final txt = addtitle.text;
    final price = double.parse(addprice.text);

    if (txt.length <= 2 || price < 0) {
      return;
    }

    txfunc(txt, price);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(40),
        height: 300,
        width: double.infinity,
        color: Colors.blueGrey[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: addtitle,
              decoration: InputDecoration(labelText: 'Product'),
              onSubmitted: (_) => onSubmit(),
            ),
            TextField(
              controller: addprice,
              decoration: InputDecoration(labelText: 'Amount'),
              keyboardType: TextInputType.number,
              onSubmitted: (_) => onSubmit(),
            ),
            ElevatedButton(onPressed: onSubmit, child: Text("Add Item"))
          ],
        ),
      ),
    );
  }
}
