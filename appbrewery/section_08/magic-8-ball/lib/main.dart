import 'package:flutter/material.dart';

void main() => runApp(Magic8Ball());

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
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
          color: Colors.blue,
        ),
      ),
    ));
  }
}
