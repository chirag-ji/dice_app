import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade100,
        title: Text(
          'Dices',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.teal.shade200,
      body: DiceApp(),
    ),
  ));
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
