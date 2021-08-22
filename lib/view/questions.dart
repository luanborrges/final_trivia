import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'views.dart';

class Questions extends StatelessWidget {
  const Questions({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: Column(
        children: [
          Image.network('https://media.discordapp.net/attachments/278958026134913024/878999789193273364/quiz-plugins-for-WordPress.png', alignment: Alignment.center, height: 120,),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(70),
            child: Text('insert an answer here ',
              style: TextStyle(fontSize: 28, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: (){},
              child: Text('resposta 1aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),

            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: (){},
              child: Text('resposta 1aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),

            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: (){},
              child: Text('resposta 1aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),

            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: (){},
              child: Text('resposta 1aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),

            ),
          ),
        ],
      ),
    );
  }
}
