import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/basic_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 隐藏顶部的debug调试文字
      title: 'Flutter Learn',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),
      home: Home(),
    );
  }
}

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
            BasicDemo(),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo()
      ),
    );
  }
}
