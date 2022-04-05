import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  var random = new Random();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onTap: () {
                setState(() {
                  getDiceNumber();
                });
              },
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onTap: () {
                setState(() {
                  getDiceNumber();
                });
              },
            ),
          ))
        ],
      ),
    );
  }

  void getDiceNumber() {
    leftDiceNumber = random.nextInt(6) + 1;
    rightDiceNumber = random.nextInt(6) + 1;
  }
}
