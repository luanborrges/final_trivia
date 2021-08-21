import 'package:flutter/material.dart';

class AmigoInfo extends StatefulWidget {
  AmigoInfo({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _AmigoInfoState createState() => _AmigoInfoState();
}

class _AmigoInfoState extends State<AmigoInfo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network('https://media.discordapp.net/attachments/577900277357871106/876241859234643968/0a9de3e9-3259-4fb9-abc9-9fa3d4b62244.png', width: 200, height: 300),
            Text('Conheça os amigos responsáveis pelo Amigo Card!'),
            Column(
              children: [
                Text('Camila : camilabertholdpires@gmail.com | github.com/camisnew'),
                Text('Luan : luanb.aguiar@gmail.com | github.com/luanborrges'),
              ],
            ),
            Column(
              children: [
                Text('Impressões do Flutter:'),
                Text('Camila : O que falar do flutterzin?! Tá sendo muito intuitivo e divertido!'),
                Text('Luan : tá dando um nó mas passo bem'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}