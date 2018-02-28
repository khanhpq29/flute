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
  double billAmount = 0.0;
  double tipPercentage = 0.0;
  var total = 0.0;
  AlertDialog alertDialog;
  Text tvSum;
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Simple calculator"),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            createBuildAmount(),
            createTipPercentage(),
            createRaisedButton(),
            createTvSum(),
            createChangeButton()
          ],
        ),
      ),
    );
  }

  Widget createBuildAmount() {
    return new TextField(
      keyboardType: TextInputType.number,
      decoration: new InputDecoration(
          hintText: "Bill amount"
      ),
      controller: controller,
      onChanged: (String value) {
        try {
          billAmount = double.parse(value);
        } catch (exception) {
          billAmount = 0.0;
        }
      },
    );
  }

  Widget createTipPercentage() {
    return new TextField(
      keyboardType: TextInputType.number,
      decoration: new InputDecoration(
          hintText: "Percentage"
      ),
      onChanged: (String value) {
        try {
          tipPercentage = double.parse(value);
        } catch (exception) {
          tipPercentage = 0.0;
        }
      },
    );
  }

  Widget createRaisedButton() {
    return new Container(
        padding: const EdgeInsets.only(top: 16.0),
        child: new RaisedButton(
            child: new Text("Add", overflow: TextOverflow.ellipsis,),
            onPressed: () {
              handlePressed();
            }
        )
    );
  }

  Widget createChangeButton() {
    return new Builder(
      builder: (BuildContext context) {
        return new Center(
          child: new RaisedButton(
            child: new Text('SHOW A SNACKBAR'),
            onPressed: () {
              Scaffold.of(context).showSnackBar(new SnackBar(
                content: new Text('Hello!'),
                action: new SnackBarAction(label: "OK", onPressed: handlePressSnackBar),
              ));
            },
          ),
        );
      },
    );
  }

  void handlePressed() {
    var caltip = billAmount * tipPercentage / 100;
    total = caltip + billAmount;
    alertDialog = new AlertDialog(
      title: new Text("demo alert"),
      content: new Text(controller.text),
//      content: new Text("Bill amount: \$$billAmount \n"
//          "Total: \$$total"),
      actions: <Widget>[
        new FlatButton(onPressed: pressOk, child: new Text("Ok")),
        new FlatButton(onPressed: pressCancel, child: new Text("Cancel"))
      ],
    );
    showDialog(context: context, child: alertDialog);
  }

  Widget createTvSum() {
    return new Container(
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: tvSum = new Text("iefjieaj"),
    );
  }

  void pressOk() {
    Navigator.pop(context);
  }

  void pressCancel() {
    Navigator.pop(context);
  }

  void changeText() {
    SnackBar snackBar = new SnackBar(content: new Text("snack bar demo"),
      action: new SnackBarAction(label: "OK", onPressed: () {
        Scaffold.of(context).showSnackBar(
            new SnackBar(content: new Text('new As action'),));
      }),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

  void handlePressSnackBar() {
  }
}