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
                ),
              ]
            )

      ),
    );
  }
}
