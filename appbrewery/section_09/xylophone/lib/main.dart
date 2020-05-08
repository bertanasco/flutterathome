import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  playNote(1);
                },
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  playNote(2);
                },
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  playNote(3);
                },
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  playNote(4);
                },
              ),
              FlatButton(
                color: Colors.greenAccent,
                onPressed: () {
                  playNote(5);
                },
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  playNote(6);
                },
              ),
              FlatButton(
                color: Colors.deepPurple,
                onPressed: () {
                  playNote(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
