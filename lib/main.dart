import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey() {
    return Expanded(
      child: FlatButton(
        color: Colors.,
        onPressed: () {
          playSound(1);
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
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(),
                buildKey(),
                buildKey(),
                buildKey(),
                buildKey(),
                buildKey(),
                buildKey(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
