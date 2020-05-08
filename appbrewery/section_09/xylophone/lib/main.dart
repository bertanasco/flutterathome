import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  List<Widget> generateFlatButtons() {
    List<Widget> flatButtons = List<Widget>();
    for (var i = 1; i < 8; i++) {
      flatButtons.add(
        FlatButton(
          color: Colors.red,
          onPressed: () {
            playNote(i);
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    playNote(1);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    playNote(2);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    playNote(3);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    playNote(4);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.greenAccent,
                  onPressed: () {
                    playNote(5);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    playNote(6);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.deepPurple,
                  onPressed: () {
                    playNote(7);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
