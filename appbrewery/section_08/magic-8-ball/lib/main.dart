import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(Magic8Ball());

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballNumber = Random().nextInt(5) + 1;

  void randomBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          title: Text(
            'Ask Me Anything',
            textAlign: TextAlign.right,
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: FlatButton(
                child: Image.asset('images/ball$ballNumber.png'),
                onPressed: () {
                  randomBallNumber();
                  print('ball number $ballNumber');
                }),
          ),
        ),
      ),
    ));
  }
}
