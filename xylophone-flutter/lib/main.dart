import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({Color? backgroundColor, int? soundNote,String? text}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        onPressed: ()  {
          playSound(1);
        },
        child: Text(text ?? '',
        style: TextStyle(
          fontSize: 21,
          color: Colors.white70,
        ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(backgroundColor: Colors.red, soundNote: 1,text: 'Color is red'),
                buildKey(backgroundColor: Colors.orange, soundNote: 2,text: 'Color is orange'),
                buildKey(backgroundColor: Colors.yellow, soundNote: 3,text: 'Color is yellow'),
                buildKey(backgroundColor: Colors.green, soundNote: 4,text: 'Color is green'),
                buildKey(backgroundColor: Colors.teal, soundNote: 5,text: 'Color is teal'),
                buildKey(backgroundColor: Colors.blue, soundNote: 6,text: 'Color is blue'),
                buildKey(backgroundColor: Colors.purple, soundNote: 7,text: 'Color is purple'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}