import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.orange,
      body: new Container(
        child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(Icons.adb, size: 100.0, color: Colors.white,),
                new Text("Android", style: new TextStyle(fontSize: 26.0, color: Colors.white),),
              ],
            )
        ),
      ),
    );
  }
}