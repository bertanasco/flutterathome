import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Text('Test yo yo lorem '),
            height: 100.0,
            width: 100.0,
            margin: EdgeInsets.only(left: 20), //outside
            padding: EdgeInsets.all(20.0), //inside
          ),
        ),
      ),
    );
  }
}
