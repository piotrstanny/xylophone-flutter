import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              textDirection: TextDirection.rtl,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    color: Colors.red,
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 90.0),
                    onPressed: () {
                      playSound(1);
                    },
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    color: Colors.orange,
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 90.0),
                    onPressed: () {
                      playSound(2);
                    },
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    color: Colors.yellow,
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 90.0),
                    onPressed: () {
                      playSound(3);
                    },
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    color: Colors.lightGreen,
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 90.0),
                    onPressed: () {
                      playSound(4);
                    },
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    color: Colors.teal,
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 90.0),
                    onPressed: () {
                      playSound(5);
                    },
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    color: Colors.blue,
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 90.0),
                    onPressed: () {
                      playSound(6);
                    },
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    color: Colors.deepPurpleAccent,
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 90.0),
                    onPressed: () {
                      playSound(7);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
