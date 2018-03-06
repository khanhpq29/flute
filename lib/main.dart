import 'package:flutter/material.dart';
import 'dart:convert';

void main() => runApp(new DemoLab());

class DemoLab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Chat",
      debugShowCheckedModeBanner: false,
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new AddListState();
}

class AddListState extends State<LoginPage>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Bottom navigation"),
        backgroundColor: Colors.blue,
      ),
      body: new Container(
        child: new Center(
          child: new FutureBuilder(
            future: DefaultAssetBundle.of(context).loadString(
                "datareport/data.json"), builder: (context, async) {
            var newData = JSON.decode(async.data.toString());
            return new ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return new Card(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      new Text(newData[index]['name']),
                      new Text(newData[index]["height"]),
                      new Text(newData[index]["mass"]),
                      new Text(newData[index]["hair_color"]),
                      new Text(newData[index]["skin_color"]),
                      new Text(newData[index]["eye_color"]),
                      new Text(newData[index]["birth_year"]),
                      new Text(newData[index]["gender"])
                    ],
                  ),
                );
              },
              itemCount: newData == null ? 0 : newData.length,
              reverse: false,
            );
          },
          ),
        ),
      ),
    );
  }
}
