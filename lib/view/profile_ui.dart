import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {

  const ProfileUI ({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context ) {
    return Column(
      children:<Widget> [
        Stack(
          alignment: Alignment.center,
          children: <Widget> [
              Image(
                width: double.infinity,
                height:MediaQuery.of(context).size.height/3 ,
                fit: BoxFit.cover,
                image: NetworkImage('https://media.discordapp.net/attachments/577900277357871106/878729461728706570/unknown.png'),
              ),
              Positioned(
                  bottom: 0.0,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage('https://media.discordapp.net/attachments/278958026134913024/878703429000757258/cimentinho.jpg')
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
        label: const Text(
            'Contato',
           style: TextStyle(color: Colors.white),
          ),

        ),
        ListTile(
          title: const Text('Sobre mim'),
          subtitle: Text('HASUHASIASHASIOHASIOAUSHIASHASIASHIASHASIASIASHIUASHUASHAISHIASUHIAUHASHAISUASIASIASHIAS'),
        ),
      ],
    );
  }
}
