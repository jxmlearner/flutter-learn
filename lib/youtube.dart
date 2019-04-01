/*
  视频地址： https://www.youtube.com/watch?v=wE7khGHVkYY&list=PLOU2XLYxmsIJyiwUPCou_OVTpRIn_8UMd&index=3&t=0s
 */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'My Dog App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Yellow Lab'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.lightBlueAccent),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Rocky'),
                ),
              ),
              SizedBox(height: 8.0),
              DecoratedBox(
                decoration: BoxDecoration(color:Colors.lightBlueAccent),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Lyla'),
                ),
              ),
              SizedBox(height: 8.0),
              DecoratedBox(
                decoration: BoxDecoration(color:Colors.lightBlueAccent),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Lyla'),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}