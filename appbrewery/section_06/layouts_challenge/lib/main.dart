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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  color: Colors.red,
                  width: 100,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      color: Colors.yellowAccent,
                      width: 100.0,
                      height: 100.0,
                    ),
                    Container(
                      color: Colors.yellow,
                      width: 100.0,
                      height: 100.0,
                    ),
                  ],
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                Container(
                  color: Colors.blue,
                  width: 100,
                ),
              ],
            ),
          )),
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
