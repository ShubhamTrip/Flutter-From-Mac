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
        body: SafeArea(
            child: Column(
          children: [
            Card(
              child: Container(
                height: 300,
                width: double.infinity,
                color: Colors.amberAccent,
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 80,
                  width: double.infinity,
                  color: Colors.amber,
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
