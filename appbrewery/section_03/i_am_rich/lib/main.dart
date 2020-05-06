import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("I Am Rich"),
            backgroundColor: Colors.blueGrey[900],
          ),
          backgroundColor: Colors.blueGrey,
          body: Center(
            child: Image(
              image: NetworkImage(
                  'https://i.pinimg.com/736x/0f/04/3d/0f043d6ae94662c4347be5d19d9a2825.jpg'),
            ),
          ),
        ),
      ),
    );
