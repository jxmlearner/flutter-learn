# first_demo

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.


## 快速生成statefulwidget的snippet 
`stful`

## 一、计数器代码
```dart
import 'package:flutter/material.dart';
import './NewRoute.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Counter',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key,this.title}): super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Text('You have pushed the button this many times:'),
            new Text('$_counter', style: Theme.of(context).textTheme.display1,),
            FlatButton(
              child: Text('打开新路由'),
              textColor: Colors.blue,
              onPressed: () {
                // 导航到新路由
                Navigator.push(context, new MaterialPageRoute(builder:(context){
                  return new NewRoute();
                }));
              },
            )
          ],),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add)
      ),
    );
  }
}
```
## 二、工具栏按钮
```dart
return Scaffold(
  backgroundColor: Colors.grey[100],  // 浅灰色背景
  appBar: AppBar(
    title: Text('Flutter Learn'),
    elevation: 0.0,   // 头部导航栏下的阴影,值为0.0意味着不要阴影,默认值是4.0
    leading: IconButton(
      icon: Icon(Icons.menu),
      tooltip: '菜单',
      onPressed: ()=> debugPrint('按下了顶部工具栏的菜单按钮'),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        tooltip: '搜索',
        onPressed: (){
          debugPrint('按下了顶部工具栏的搜索按钮');
        },
      ),
    ],
  ),
  body: ListViewDemo(),
);
```
## 三、 tab标签
flutter的标签由三部分组成 TabController、TabBar、TabBarView
```dart
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100], // 浅灰色背景
        appBar: AppBar(
          title: Text('Flutter Learn'),
          elevation: 0.0, // 头部导航栏下的阴影,值为0.0意味着不要阴影,默认值是4.0
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: '菜单',
            onPressed: () => debugPrint('按下了顶部工具栏的菜单按钮'),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: '搜索',
              onPressed: () {
                debugPrint('按下了顶部工具栏的搜索按钮');
              },
            ),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab( icon: Icon(Icons.local_florist)),
              Tab( icon: Icon(Icons.change_history)),
              Tab( icon: Icon(Icons.directions_bike)),
            ],
          )
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
          ],
        ),
      ),
    );
  }
}
```