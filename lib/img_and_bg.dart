import 'package:flutter/material.dart';
import 'dart:collection';
import 'package:validate/validate.dart';

void main() => runApp(new DemoLab());

class DemoLab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Chat",
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new AddListState();
}

class AddListState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("android"),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Android",
            style: new TextStyle(color: Colors.white, fontSize: 28.0),),
        ),
        decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage("datareport/lvung.jpg"),
                fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}
