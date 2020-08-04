import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: RaisedButton(
              color: Colors.amberAccent,
              padding: EdgeInsets.all(50.0),
              onPressed: () {
                final player = AudioCache();
                int sound = Random().nextInt(7) + 1;
                player.play('note$sound.wav');
              },
              child: Text('Play Sound'),
            ),
          ),
        ),
      ),
    );
  }
}
