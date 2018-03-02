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
  State<StatefulWidget> createState() => new FormFlutter();
}

class FormFlutter extends State<LoginPage> {
  final GlobalKey<FormState> _keyForm = new GlobalKey<FormState>();
  LoginData loginData = new LoginData();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final size = MediaQuery
        .of(context)
        .size;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Form(
            key: _keyForm,
            child: new ListView(
              children: <Widget>[
                new TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: new InputDecoration(
                      hintText: "email@example.com",
                      labelText: "Email"),
                  validator: _invalidateEmail,
                  onSaved: (String value){
                    loginData.email = value;
                  },
                ),
                new TextFormField(
                  obscureText: true,
                  decoration: new InputDecoration(
                      hintText: "Password", labelText: "Password"),
                  validator: _validatePassword,
                  onSaved: (String value){
                    loginData.password = value;
                  },
                ),
                new Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  width: size.width,
                  child: new RaisedButton(
                    onPressed: () => this.submit(),
                    child: new Text(
                      "Login", style: new TextStyle(color: Colors.white),),
                    color: Colors.blue,
                  ),
                )
              ],
            )
        ),
      ),
    );
  }

  String _invalidateEmail(String value) {
    try{
      Validate.isEmail(value);
    }catch(e){
      return "Email is invalidate";
    }
    return null;
  }

  String _validatePassword(String pass){
    if(pass.length < 6){
      return "Password must be at least 6 characters";
    }
    return null;
  }

  void submit(){
    if(this._keyForm.currentState.validate()){
      this._keyForm.currentState.save();
      print("User account was saved");
      print("Email: ${loginData.email}");
      print("Password: ${loginData.password}");
    }
  }
}

class LoginData {
  String email;
  String password;
}
