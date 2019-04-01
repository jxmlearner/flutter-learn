import 'package:flutter/material.dart';
import './model/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Learn',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],  // 浅灰色背景
      appBar: AppBar(
        title: Text('Flutter Learn'),
        elevation: 0.0,   // 关部导航栏下的阴影
      ),
      body: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin:EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0,),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _itemBuilder,
    );
  }
}