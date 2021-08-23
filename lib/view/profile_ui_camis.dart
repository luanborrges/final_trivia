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
                image: NetworkImage('https://st3.depositphotos.com/9880800/16939/i/600/depositphotos_169394624-stock-photo-businessman.jpg'),
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
          title: const Text('Sobre mim'),
          subtitle: Text('Sou Séria'),
        ),
      ],
    );
  }
}
