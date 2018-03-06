import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.yellow,
      body: new Container(
        child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(Icons.home, size: 100.0, color: Colors.white,),
                new Text("Home", style: new TextStyle(fontSize: 26.0, color: Colors.white),),
              ],
            )
        ),
      ),
    );
  }
}