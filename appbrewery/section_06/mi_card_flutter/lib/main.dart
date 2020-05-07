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
          child: Row(
            children: <Widget>[
              Container(
                color: Colors.red,
                child: Text('Container1'),
                height: 100.0,
                width: 100.0,
              ),
              SizedBox(
                height: 10,
                width: 0,
              ),
              Container(
                color: Colors.blue,
                child: Text('Container2'),
                height: 100.0,
                width: 100.0,
              ),
              SizedBox(
                height: 10,
                width: 0,
              ),
              Container(
                color: Colors.white,
                child: Text('Container3'),
                height: 100.0,
                width: 100.0,
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
        ),
      ),
    );
  }
}

/*
Container(
            color: Colors.white,
            child: Text('Container1'),
            height: 100.0,
            width: 100.0,
          ),

 */
