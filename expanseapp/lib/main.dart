// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:expanseapp/Views/userTransaction.dart';
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expanse App"),
          actions: [
            Icon(Icons.add),
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [usrTransactions()],
          ),
        )),
      ),
    );
  }
}
