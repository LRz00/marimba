import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {
  void tocarSom(String num) {
    final player = AudioPlayer();
    player.play(AssetSource('nota$num.wav'));
  }

  Expanded criarBotao(String num, Color color) {
   return Expanded(
      child: TextButton(
        onPressed: () {
          tocarSom(num);
        },
        style: TextButton.styleFrom(backgroundColor: color),
        child: Text(""),
      ),
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
              criarBotao('1', Colors.orange),
              criarBotao('2', Colors.purple),
              criarBotao('3', Colors.blue),
              criarBotao('4', Colors.pink),
              criarBotao('5', Colors.lime),
              criarBotao('6', Colors.green),
              criarBotao('7', Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
