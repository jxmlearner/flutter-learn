import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('New Route'),
      ),
      body: new Center(
        child: Text('This is new route'),
      ),
    );
  }
}