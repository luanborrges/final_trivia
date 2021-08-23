import 'package:flutter/material.dart';

class ProfileUICamis extends StatelessWidget {


  const ProfileUICamis ({Key? key }) : super(key: key);


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
                image: NetworkImage('https://media.discordapp.net/attachments/577900277357871106/879225606926127134/unknown.png'),
              ),
              Positioned(
                  bottom: 0.0,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage('https://media.discordapp.net/attachments/577900277357871106/879223924586590238/unknown.png')
                  ),
              ),
          ],
        ),
        SizedBox(
          height: 20,

        ),
        ListTile(
          title: Center(child: Text('Camila Berthold Pires'),),
          subtitle: Center(child: Text('github.com/camisnew'),),
        ),
        ListTile(
          title: const Text('Sobre Aplicativos II'),
          subtitle: Text('É bacana, intuitivo, mas chega um momento que tem muito detalhe e fica complicado de acompanhar sem muito tempo disponível. Nota 8/10'),
        ),
      ],
    );
  }
}
