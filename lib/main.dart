import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XyloPhoneApp());

class XyloPhoneApp extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    Expanded playTile(Color c, String i) {
      return Expanded(
        child: FlatButton(
          color: c,
          onPressed: () {
            player.play('note$i.wav');
          },
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              playTile(Colors.red, '1'),
              playTile(Colors.orange, '2'),
              playTile(Colors.yellow, '3'),
              playTile(Colors.green, '4'),
              playTile(Colors.blueGrey, '5'),
              playTile(Colors.blue, '6'),
              playTile(Colors.purple, '7'),
            ],
          ),
        ),
      ),
    );
  }
}
