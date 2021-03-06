// https://flutter-io.cn/docs/cookbook/animation/opacity-animation

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Opacity Demo';
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _visable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedOpacity(
          child: Container(width: 200, height: 200, color: Colors.green),
          opacity: _visable? 1.0: 0.0,
          duration: Duration(milliseconds: 500),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visable = !_visable; 
          });
        },
        tooltip: 'Toggle Opacity',
        child: Icon(Icons.flip),
      ),
    );
  }
}
