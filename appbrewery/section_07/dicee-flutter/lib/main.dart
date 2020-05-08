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
        body: DicePageStateFul(),
      ),
    ),
  );
}

class DicePageStateFul extends StatefulWidget {
  @override
  _DicePageStateFulState createState() => _DicePageStateFulState();
}

class _DicePageStateFulState extends State<DicePageStateFul> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;
  void randomDiceNumbers() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                randomDiceNumbers();
                print('Button 1 pressed');
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                randomDiceNumbers();
                print('Button 2 pressed');
              },
            ),
          ),
        ],
      ),
    );
  }
}
