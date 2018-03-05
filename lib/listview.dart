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
  State<StatefulWidget> createState() => new TabbedAppBarSample();
}

class TabbedAppBarSample extends State {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Listview"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(8.0),
        child: new ListView(
          padding: const EdgeInsets.all(4.0),
          children: items.map((Item item){
            return new ListItem(item: item);
          }).toList(),
        ),
      ),
    );
  }
}

class Item {
  const Item({this.title});

  final String title;
}

const List<Item> items = const <Item>[
  const Item(title: "item1"),
  const Item(title: "item2"),
  const Item(title: "item3"),
  const Item(title: "item4"),
  const Item(title: "item5"),
  const Item(title: "item6"),
  const Item(title: "item7"),
];

class ListItem extends StatefulWidget {
  Item item;

  ListItem({this.item});

  @override
  State createState() {
    return new ListItemState(item: item);
  }
}

class ListItemState extends State<ListItem> {
  Item item;

  ListItemState({this.item});

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
    );
  }
}