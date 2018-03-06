import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  static const String routeName = "/setting" ;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Setting"),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Setting screen"),
        ),
      ),
    );
  }
}