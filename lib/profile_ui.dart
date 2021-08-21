import 'package:flutter/material.dart';
import 'view/views.dart';
class ProfileUI extends StatelessWidget {
  const ProfileUI ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
        Stack(
          alignment: Alignment.center,
          children: <Widget> [
              Image(
                width: double.infinity,
                height:MediaQuery.of(context).size.height/3 ,
                fit: BoxFit.cover,
                image: NetworkImage('https://preview.redd.it/eolnd5fsw3o61.jpg?width=625&format=pjpg&auto=webp&s=3c2aa090ffea1c4bd967731d65149362f2be7db8'),
              ),
              Positioned(
                  bottom: 0.0,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage('https://media.discordapp.net/attachments/278958026134913024/878703429000757258/cimentinho.jpg?width=502&height=669')
                  ),
              ),
          ],
        ),
        SizedBox(
          height: 20,

        ),
        ListTile(
          title: Center(child: Text('Luan Borges'),),
          subtitle: Center(child: Text('Desenvolvedor'),),
        ),
        TextButton.icon(
            onPressed: (){},
            icon: Icon(
              Icons.mail,
              color: Colors.white,
        ),
        label: Text(
            'Contato',
           style: TextStyle(color: Colors.white),
          ),

        ),
        ListTile(
          title: Text('Sobre min'),
          subtitle: Text('HASUHASIASHASIOHASIOAUSHIASHASIASHIASHASIASIASHIUASHUASHAISHIASUHIAUHASHAISUASIASIASHIAS'),
        ),
      ],
    );
  }
}
