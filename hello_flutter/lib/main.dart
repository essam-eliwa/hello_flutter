import "package:flutter/material.dart";

main() => runApp(App01());

class App01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First App Lec 03",
      home: new Scaffold(
        appBar: AppBar(
          title: Text('My AppBar Text'),
        ),
        body: Center(
          child: Container(
            color: Colors.greenAccent,
            width: 400.0,
            height: 400.0,
            margin: EdgeInsets.all(30.0),
            padding: EdgeInsets.all(40.0),
            child: RaisedButton(
              onPressed: () => print('button pressed'),
              elevation: 20.0,
              color: Colors.deepPurple[100],
              splashColor: Colors.deepPurple[600],
              child: Text("Connect"),
            ),
          ),
        ),
      ),
    );
  }
}
