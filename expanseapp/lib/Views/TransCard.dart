// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransCard extends StatelessWidget {
  String product;
  DateTime date;
  double price;
  TransCard({required this.product, required this.date, required this.price});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Colors.amberAccent,
        elevation: 5,
        child: SizedBox(
          width: double.infinity,
          height: 100,
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.all(10),
                child: Text(
                  product,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Price: ${price.toStringAsFixed(2)}',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(10),
                    child: Text(
                      DateFormat.yMMMd().format(date),
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
