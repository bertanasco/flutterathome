import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Widget generateFlatButton({Color color, int noteNumber}) => Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playNote(noteNumber);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              generateFlatButton(color: Colors.red, noteNumber: 1),
              generateFlatButton(color: Colors.orange, noteNumber: 2),
              generateFlatButton(color: Colors.yellow, noteNumber: 3),
              generateFlatButton(color: Colors.green, noteNumber: 4),
              generateFlatButton(color: Colors.greenAccent, noteNumber: 5),
              generateFlatButton(color: Colors.blue, noteNumber: 6),
              generateFlatButton(color: Colors.deepPurple, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
