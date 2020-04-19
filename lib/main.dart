import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Expanded buidKey({int note, Color color}) {
    return Expanded(
      flex: 1,
      child: FlatButton(
        color: color,
        onPressed: () {
          player.play('note$note.wav');
        },
      ),
    );
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
              buidKey(note: 1, color: Colors.red),
              buidKey(note: 2, color: Colors.orange),
              buidKey(note: 3, color: Colors.yellow),
              buidKey(note: 4, color: Colors.green),
              buidKey(note: 5, color: Colors.blueGrey),
              buidKey(note: 6, color: Colors.blue),
              buidKey(note: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
