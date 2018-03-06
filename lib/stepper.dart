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
  int current_step = 0;

  List<Step> list_step = [
    new Step(title: new Text("step 1"),
        content: new Text("Hello"),
        isActive: true),
    new Step(title: new Text("step 2"),
        content: new Text("world"),
        state: StepState.editing,
        isActive: true),
    new Step(title: new Text("step 3"),
        content: new Text("Hello world"),
        isActive: true)
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("android"),
        ),
        body: new Container(
          child: new Stepper(steps: list_step,
            currentStep: current_step,
            type: StepperType.vertical,
            onStepTapped: (step) {
              setState(() {
                current_step = step;
              });
              print(step.toString());
            },
            onStepCancel: () {
              setState((){
                if(current_step > 0){
                  current_step = current_step - 1;
                }else {
                  current_step = 0;
                }
              });
            },
            onStepContinue: (){
              setState(() {
                if(current_step < list_step.length - 1){
                  current_step = current_step + 1;
                }else{
                  current_step = 0;
                }
              });
            },),
        )
    );
  }
}
