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
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('images/caden.png'),
                  radius: 50,
                ),
                Text(
                  'Blake Caden Añasco',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Planter Destroyer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          )),
    );
  }
}
