import 'package:final_project_mobile2/profile_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
      body:
      ProfileUI(),

    );
  }
}