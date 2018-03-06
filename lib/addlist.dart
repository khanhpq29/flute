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
  final TextEditingController editingController = new TextEditingController();

  List<ListItem> listItem = <ListItem>[];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("List"),
        ),
        body: new Container(
          margin: const EdgeInsets.all(16.0),
          child: new Column(
            children: <Widget>[
              new Flexible(child: new ListView.builder(
                itemBuilder: (BuildContext context, int index){
                  listItem[index];
                  new GestureDetector(
                    onTap: handleList,
                  );
                },
                itemCount: listItem.length,
                reverse: false,
              )),
              new Divider(
                height: 1.0,
                color: Colors.red,
              ),
              new Container(
//                decoration: new BoxDecoration(
//                  color: Theme
//                      .of(context)
//                      .cardColor,
//                ),
                child: createBottomBoxWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget createBottomBoxWidget() {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Flexible(
              child: new TextField(
                decoration: new InputDecoration(
                    hintText: "Add something"
                ),
                controller: editingController,
              )),
          new Container(
            child: new IconButton(icon: new Icon(Icons.list),
                color: Colors.red, onPressed: () => handleList()
            ),
          ),
          new Container(
            child: new IconButton(icon: new Icon(Icons.send),
                color: Colors.red, onPressed: () {
                  handleSend(editingController.text);
                }
            ),
          )
        ],
      ),
    );
  }

  void handleList() {

  }

  void handleSend(String value) {
    editingController.clear();
    if (!value
        .trim()
        .isEmpty) {
      ListItem item = new ListItem(content: value.trim(),);
      setState(() {
        listItem.insert(0, item);
      });
    }
  }

  void navigateToSecond(int index) {
    var alertDialog = new AlertDialog(
      title: new Text("jfiej"),
      content: new Text("alert dialog")
      ,
    );
    showDialog(context: context, child: alertDialog);
  }
}

class ListItem extends StatelessWidget {
  final String content;

  ListItem({this.content});

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        children: <Widget>[
          new CircleAvatar(
            backgroundColor: Colors.blue,
            child: new Text(content[0].toUpperCase()),
          ),
          new Container(
            margin: const EdgeInsets.only(left: 16.0),
            child: new Text(content),
          ),
        ],
      ),
    );
  }
}

