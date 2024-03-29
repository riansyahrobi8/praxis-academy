import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var routes = <String, WidgetBuilder> {
      MyItemPage.routeName: (BuildContext context) => new MyItemPage(title: "MyItemsPage",)
    };
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
      routes: routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    Navigator.pushNamed(context, MyItemPage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var button = new IconButton(icon: new Icon(Icons.access_alarm), onPressed: _onButtonPressed);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Column(
        children: <Widget>[
          new Text('Dog'),
          new Text('Cat'),
          button
        ],
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }

  void _onButtonPressed() {
    Navigator.pushNamed(context, MyItemPage.routeName);
  }
}

class MyItemPage extends StatefulWidget {
  MyItemPage({Key key, this.title}) : super(key: key);

  static const String routeName = "/MyItemsPage";
  final String title;

  @override
  _MyItemsPageState createState() => _MyItemsPageState();
}

class _MyItemsPageState extends State<MyItemPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var button = new IconButton(icon: new Icon(Icons.arrow_back), onPressed: _onButtonPressed);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Text('Item1'),
            new Text('Item2'),
            button
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: _onFloatingActionButtonPressed,
      ),
    );
  }

  void _onFloatingActionButtonPressed() {
  }

  void _onButtonPressed() {
    Navigator.pop(context);
  }
}