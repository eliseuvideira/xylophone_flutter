import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: MainPage(),
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  final player = AudioCache();

  Widget _buildButton(Color color, int number) {
    return Expanded(
      child: FlatButton(
        color: color,
        child: null,
        onPressed: () {
          player.play('note$number.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildButton(Colors.red, 1),
          _buildButton(Colors.orange, 2),
          _buildButton(Colors.yellow, 3),
          _buildButton(Colors.green, 4),
          _buildButton(Colors.teal, 5),
          _buildButton(Colors.blue, 6),
          _buildButton(Colors.purple, 7),
        ],
      ),
    );
  }
}
