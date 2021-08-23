import 'package:final_project_mobile2/view/profile_ui_camis.dart';
import 'package:flutter/material.dart';

import 'profile_ui.dart';

class AboutUs extends StatefulWidget {
  AboutUs({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.local_fire_department)),
              Tab(icon: Icon(Icons.ac_unit_sharp)),
            ],
          ),
          title: Text(widget.title),
        ),
        body: TabBarView(
          children: [
            Screen1(),
            Screen2(),
          ],
        ),
      ),
    );

  }
}

class Screen1 extends StatelessWidget {
  Screen1();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ProfileUI(),
    );
  }
}
class Screen2 extends StatelessWidget {
  Screen2();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ProfileUICamis(),
    );
  }
}