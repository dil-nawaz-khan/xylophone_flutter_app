import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.setAsset('assets/note$soundNumber.wav');
    player.play();
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () => playSound(soundNumber),
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Container(color: color),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('Xylophone App')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.yellow, soundNumber: 2),
            buildKey(color: Colors.green, soundNumber: 3),
            buildKey(color: Colors.blueAccent, soundNumber: 4),
            buildKey(color: Colors.purple, soundNumber: 5),
            buildKey(color: Colors.teal, soundNumber: 6),
            buildKey(color: Colors.limeAccent, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
