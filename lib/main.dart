import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            custmBtn(Colors.red, 'note1.wav'),
            custmBtn(Colors.orange, 'note2.wav'),
            custmBtn(Colors.yellow, 'note3.wav'),
            custmBtn(Colors.green, 'note4.wav'),
            custmBtn(Colors.lightGreenAccent, 'note5.wav'),
            custmBtn(Colors.blueAccent, 'note6.wav'),
            custmBtn(Colors.purple, 'note7.wav')
          ],
        )),
        backgroundColor: Colors.black,
      ),
    );
  }

  playAudio(fileUrl) {
    final player = AudioPlayer();
    player.play(AssetSource(fileUrl));
  }

  Widget custmBtn(color, fileUrl) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playAudio(fileUrl);
        },
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
