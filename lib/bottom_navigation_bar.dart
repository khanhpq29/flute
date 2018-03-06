import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navigation/first.dart';
import 'package:flutter_app/bottom_navigation/second.dart';
import 'package:flutter_app/bottom_navigation/third.dart';

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
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
  }


  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Bottom navigation"),
        backgroundColor: Colors.blue,
      ),
      body: new TabBarView(
        children: <Widget>[
          new FirstTab(), new SecondTab(), new ThirdTab(), new FirstTab()],
        controller: tabController,
      ),
      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: new TabBar(tabs: <Tab>[
          new Tab(icon: new Icon(Icons.favorite), text: "Favorite",),
          new Tab(icon: new Icon(Icons.home), text: "Home",),
          new Tab(icon: new Icon(Icons.adb), text: "Adb",),
          new Tab(icon: new Icon(Icons.favorite,), text: "Favorite",),
        ],
          controller: tabController,
        )
        ,
      )
      ,
    );
  }
}
