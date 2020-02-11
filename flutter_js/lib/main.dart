import 'dart:js' as js;
import 'package:flutter_html/flutter_html.dart';

import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tone.js & Flutter Web Piano Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlutterJS()
    );
  }
}

class FlutterJS extends StatefulWidget {

  FlutterJS({Key key}) : super(key: key);

  @override
  _FlutterJSState createState() => _FlutterJSState();
}

class _FlutterJSState extends State<FlutterJS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter Demo"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child:Row(
            children: <Widget>[
              RaisedButton(
                onPressed:  js.context.callMethod("createChart"),
                child: Text(
                  'Hello'
                ),
              ),
              Html(
                data: """
                <div id="pieChart">
                <p1> Hi </p1>
                </div>
                """,
              )
            ],
          )
        ),
      )
      
    );
  }
}