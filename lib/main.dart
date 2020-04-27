import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color boja, int soundNumber, String tekst}) {
    return Expanded(
      child: FlatButton(
        child: Text(tekst),
        color: boja,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(boja: Colors.blue, soundNumber: 1, tekst: 'ovo'),
              buildKey(boja: Colors.purple, soundNumber: 2, tekst: 'je'),
              buildKey(boja: Colors.greenAccent, soundNumber: 3, tekst: 'bilo'),
              buildKey(boja: Colors.yellow, soundNumber: 4, tekst: 'bas'),
              buildKey(boja: Colors.cyan, soundNumber: 5, tekst: 'jednostavno'),
              buildKey(boja: Colors.lime, soundNumber: 6, tekst: 'ali...'),
              buildKey(
                  boja: Colors.lightBlueAccent,
                  soundNumber: 7,
                  tekst: 'MORA BITI NESTO'),
            ],
          ),
        ),
      ),
    );
  }
}
