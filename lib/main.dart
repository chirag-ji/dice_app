import 'dart:math';

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

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;
  var random = Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftDiceNum.png'),
              onPressed: () => {
                setState(() {
                  leftDiceNum = random.nextInt(6) + 1;
                  rightDiceNum = random.nextInt(6) + 1;
                })
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightDiceNum.png'),
              onPressed: () => {
                setState(() {
                  leftDiceNum = random.nextInt(6) + 1;
                  rightDiceNum = random.nextInt(6) + 1;
                })
              },
            ),
          ),
        ],
      ),
    );
  }
}
