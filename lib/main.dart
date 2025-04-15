import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSoud(int soundNumber) {
    final player = AudioPlayer();
    player.setAsset('assets/note$soundNumber.wav');
    player.play();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextButton(
              onPressed: () {
                playSoud(1);
              },
              child: Container(height: 25.0, width: 100.0, color: Colors.red),
            ),
            TextButton(
              onPressed: () {
                playSoud(2);
              },
              child: Container(
                height: 25.0,
                width: 100.0,
                color: Colors.greenAccent,
              ),
            ),
            TextButton(
              onPressed: () {
                playSoud(3);
              },
              child: Container(
                height: 25.0,
                width: 100.0,
                color: Colors.yellow,
              ),
            ),
            TextButton(
              onPressed: () {
                playSoud(4);
              },
              child: Container(height: 25.0, width: 100.0, color: Colors.green),
            ),
            TextButton(
              onPressed: () {
                playSoud(5);
              },
              child: Container(height: 25.0, width: 100.0, color: Colors.blue),
            ),
            TextButton(
              onPressed: () {
                playSoud(6);
              },
              child: Container(
                height: 25.0,
                width: 100.0,
                color: Colors.orange,
              ),
            ),
            TextButton(
              onPressed: () {
                playSoud(7);
              },
              child: Container(
                height: 25.0,
                width: 100.0,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
