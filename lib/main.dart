import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNo) {
    final player = AudioCache();
    player.play('note$soundNo.wav');
  }


  Expanded buildKey ({Color clr, int soundNo}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNo);
        },
        color: clr,
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
            children: <Widget> [
              buildKey(clr: Colors.red, soundNo: 1),
              buildKey(clr: Colors.yellowAccent, soundNo: 2),
              buildKey(clr: Colors.blue, soundNo: 3),
              buildKey(clr: Colors.teal, soundNo: 4),
              buildKey(clr: Colors.green, soundNo: 5),
              buildKey(clr: Colors.pink, soundNo: 6),
              buildKey(clr: Colors.purple, soundNo: 7),


            ],
          ),
        ),
      ),
    );
  }
}
