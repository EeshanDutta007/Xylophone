import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildK(Color color, int num) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          title: Center(child: Text('Xylophone')),
          backgroundColor: Colors.brown,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildK(Colors.red, 1),
                buildK(Colors.deepOrange, 2),
                buildK(Colors.yellow, 3),
                buildK(Colors.green, 4),
                buildK(Colors.teal, 5),
                buildK(Colors.blue, 6),
                buildK(Colors.purple, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
