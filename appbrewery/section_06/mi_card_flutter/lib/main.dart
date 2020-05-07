import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal.shade600,
          body: SafeArea(
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('images/caden.png'),
                  radius: 50,
                ),
                Text(
                  'Caden Añasco',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'PLANET DESTROYER',
                  style: TextStyle(
                    color: Colors.teal.shade100,
                    fontFamily: 'SourceSansPro',
                    fontSize: 20,
                    letterSpacing: 2.5,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 25,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal.shade800,
                    ),
                    title: Text(
                      '+63 917 1433 123',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.teal.shade800,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 25,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal.shade800,
                    ),
                    title: Text(
                      'blakecaden@mama.com',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.teal.shade800,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
