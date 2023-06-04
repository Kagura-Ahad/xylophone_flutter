import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
// import 'package:english_words/english_words.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource(
        'note$noteNumber.wav',
      ),
    );
  }

  Expanded buildButton({givenColor, noteNumber}) {
    return Expanded(
      child: TextButton(
          onPressed: () {
            playSound(noteNumber);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              givenColor,
            ),
          ),
          child: const SizedBox()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildButton(givenColor: Colors.red, noteNumber: 1),
              buildButton(givenColor: Colors.orange, noteNumber: 2),
              buildButton(givenColor: Colors.yellow, noteNumber: 3),
              buildButton(givenColor: Colors.green, noteNumber: 4),
              buildButton(givenColor: Colors.teal, noteNumber: 5),
              buildButton(givenColor: Colors.blue, noteNumber: 6),
              buildButton(givenColor: Colors.purple, noteNumber: 7),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
