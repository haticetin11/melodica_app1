import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound({required int soundNumber}) {
    final assetPlayer = AssetsAudioPlayer();
    assetPlayer.open(Audio('assets/note$soundNumber.wav'));
  }

  Expanded buildKey(
      {required Color color, required int soundNumber, required String note}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(soundNumber: soundNumber);
        },
        child: Text(
          note,
          style: TextStyle(
            color: Colors.orangeAccent,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(
                    color: Colors.pink.shade50, soundNumber: 1, note: "do"),
                buildKey(
                    color: Colors.purple.shade100, soundNumber: 2, note: "re"),
                buildKey(
                    color: Colors.blue.shade50, soundNumber: 3, note: "mi"),
                buildKey(
                    color: Colors.green.shade100, soundNumber: 4, note: "fa"),
                buildKey(
                    color: Colors.pink.shade100, soundNumber: 5, note: "sol"),
                buildKey(
                    color: Colors.purple.shade50, soundNumber: 6, note: "la"),
                buildKey(
                    color: Colors.green.shade100, soundNumber: 7, note: "si")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
