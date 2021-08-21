import 'package:flutter/material.dart';

import '../profile_ui.dart';

class AboutUs extends StatefulWidget {
  AboutUs({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ProfileUI(),
    );
  }
}