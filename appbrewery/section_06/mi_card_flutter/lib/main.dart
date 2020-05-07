import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue.shade900,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/caden.png'),
                  radius: 65,
                ),
                Text(
                  'Blake Caden Añasco',
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
                    color: Colors.blue.shade100,
                    fontFamily: 'SourceSansPro',
                    fontSize: 20,
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 200.0,
                  child: Divider(
                    color: Colors.blue.shade100,
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
                      color: Colors.blue.shade800,
                    ),
                    subtitle: Text('14344 talaga dapat'),
                    title: Text(
                      '+63 917 1433 123',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade800,
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
                      color: Colors.blue.shade800,
                    ),
                    title: Text(
                      'blakecaden@mama.com',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade800,
                      ),
                    ),
                    subtitle: Text('email niyo po nanay ko'),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
