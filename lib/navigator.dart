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
        title: new Text("navigator"),
      ),
      body: new Container(
          padding: const EdgeInsets.all(16.0),
          child: new Container(
            child: new Column(
              children: <Widget>[
                new RaisedButton(
                    child: new Text("navigate"),
                    onPressed: () {
                      Navigator.push(context,
                          new MaterialPageRoute(
                              builder: (_) => new SecondScreen(item: new Item(
                                  title: "android", content: "google"),)));
                    }),
              ],
            ),
          )
      ),
    );
  }
}

class Item {
  Item({this.title, this.content});

  final String title;
  final String content;
}

class SecondScreen extends StatelessWidget {
  SecondScreen({this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("navigator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Center(
            child: new Container(
              child: new Column(
                children: <Widget>[
                  new Text(item.title),
                  new Text(item.content),
                ],
              ),
            )
        ),
      ),
    );
  }

  void handle_finish() {
  }
}