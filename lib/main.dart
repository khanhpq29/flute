import 'package:flutter/material.dart';

void main() => runApp(new DemoLab());

class DemoLab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Chat",
      home: new ScreenChat(),
    );
  }
}

class ScreenChat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ScreenChatState();
}

class ScreenChatState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("chips_example"),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Chip(
              avatar: new CircleAvatar(
                backgroundColor: Colors.blue,
                child: new Text('AB'),
              ),
              label: new Text('Aaron Burr'),
            ),
            new Divider(
              height: 12.0,
              color: Colors.redAccent,
            ),
            new RaisedButton(
              onPressed: handlePress,
              child: new Text("show"),
            ),
          ],
        ),
      ),
    );
  }

  void handlePress() {
    showModalBottomSheet<Null>(
        context: context, builder: (BuildContext context) {
      return new Container(
        margin: const EdgeInsets.symmetric(horizontal: 9.0),
        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
                child: new TextField(
                  decoration: new InputDecoration.collapsed(hintText: "Tap to send a message"),
                )
            ),
            new Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: new FlatButton(
                  onPressed: handleButton,
                  child: new Text("Ok")
              )
              ,)
          ],
        ),
      );
    });
  }

  void handleButton() {
  }
}