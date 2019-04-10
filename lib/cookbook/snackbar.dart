// https://flutter-io.cn/docs/cookbook/design/snackbars
import 'package:flutter/material.dart';

void main() => runApp(SanckBarDemo());

class SanckBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnackBar Demo'),          
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('这是一个SnackBar!'),
            action: SnackBarAction(
              label: '取消',
              onPressed: () {
                // 取消动作要做的事情
                debugPrint('按下了SnackBar的取消');
              },
            )
          );
          // 查找当前widget上下文的widget树的Scaffold
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('Show SnackBar'),
      ),
    );
  }
}