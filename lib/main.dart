import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.red,
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 90.0),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note1.wav');
                  },
                  child: Text('1'),
                ),
                RaisedButton(
                  color: Colors.orange,
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 90.0),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note2.wav');
                  },
                  child: Text('2'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
