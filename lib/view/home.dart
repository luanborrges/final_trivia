import '../app/app_routes.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child:
            Column (
              children: [
                Image.network('https://img.freepik.com/fotos-gratis/empresario-pensativo-de-oculos-fazendo-planos-olhando-para-o-canto-superior-esquerdo-e-pensando-de-pe_1258-26400.jpg?size=626&ext=jpg', alignment: Alignment.center,),
                Text('Quiz dos guri',textAlign: TextAlign.center, style: TextStyle(fontSize: 60), ),
                Text('serios...'),
                TextButton(
                  child: Text('About Us'),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.APP_ROUTE_ABOUT_US);
                  },
                ),TextButton(
                  child: Text("Let's Go!!"),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.APP_ROUTE_START);
                  },
                ),TextButton(
                  child: Text("What do we have here"),
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.APP_ROUTE_CATEGORIES);
                  },
                ),
              ]
            )
      ),
    );
  }
}
