import 'package:flutter/material.dart';
import 'package:flutter_app/navigation_drawer/account.dart';
import 'package:flutter_app/navigation_drawer/setting.dart';

class HomeScreen extends StatefulWidget {
  String routeName = "/account";

  @override
  State createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  Drawer getDrawer() {
    var headerChild = new Text("header");

    var aboutChild = new AboutListTile(
      child: new Text("About"),
      icon: new Icon(Icons.info),
      applicationName: "nav",
      applicationIcon: new Icon(Icons.adb),
      applicationVersion: "1.0.0",
    );

    ListTile getNavItem(var icon, String title, String routeName) {
      return new ListTile(
        leading: new Icon(icon),
        title: new Text(title),
        onTap: () {
          setState(() {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed(routeName);
          });
        },
      );
    }

    var myNavChildren = [
      headerChild,
      getNavItem(Icons.settings, "Setting", SettingScreen.routeName),
      getNavItem(Icons.home, "Home", "/"),
      getNavItem(Icons.account_circle, "Account", AccountScreen.routeName),
      aboutChild
    ];

    ListView lists = new ListView(children: myNavChildren);

    return new Drawer(child: lists);
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Navigation drawer"),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Home"),
        ),
      ),
      drawer: getDrawer(),
    );
  }

}