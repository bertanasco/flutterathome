import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePageStateFul(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  var leftDiceNumber = 3;
  var rightDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                print('Button 1 pressed');
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                print('Button 2 pressed');
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DicePageStateFul extends StatefulWidget {
  @override
  _DicePageStateFulState createState() => _DicePageStateFulState();
}

class _DicePageStateFulState extends State<DicePageStateFul> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                setState(() {
                  leftDiceNumber = 5;
                });
                print('Button 1 pressed');
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                setState(() {
                  rightDiceNumber = 3;
                });

                print('Button 2 pressed');
              },
            ),
          ),
        ],
      ),
    );
  }
}
