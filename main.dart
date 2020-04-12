import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone'),
        ),
        body: SafeArea(
          child: Center(
            child: Row(
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note2.wav');
                  },
                  child: Text('Click here to play sound'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
