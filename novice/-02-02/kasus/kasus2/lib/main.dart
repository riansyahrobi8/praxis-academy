import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      home: new AwesomeButton()
  ));
}

class AwesomeButton extends StatefulWidget {
  @override
  AwesomeButtonState createState() => new AwesomeButtonState();
}

class AwesomeButtonState extends State<AwesomeButton> {
  int counter = 0;
  List<String> strings = ["Flutter", "Is", "Awesome"];
  String displayString = "";

  void onPresses() {
    setState(() {
      displayString = strings[counter];
      counter = counter < 2 ? counter+1: 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("StateFull widget!"), backgroundColor: Colors.deepOrange),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(displayString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
              new Padding(padding: new EdgeInsets.all(15.0)),
              new RaisedButton(
                  child: new Text("Press me!", style: new TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0)),
                  color: Colors.red,
                  onPressed: onPresses
              )
            ],
          ),
        ),
      ),
    );
  }
}
