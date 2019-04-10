// 表单TextField的焦点 https://flutter-io.cn/docs/cookbook/forms/focus
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Field Focus',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field Focus'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField( autofocus: true,),  // 第一个文本框在程序启动后就会获得焦点
            TextField( focusNode: myFocusNode,)  // 用户操作按钮后获得焦点
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the button is pressed, ask Flutter to focus our text field using
        // myFocusNode.
        onPressed: ()=> FocusScope.of(context).requestFocus(myFocusNode),
        tooltip: 'Focus Second Text Field',
        child: Icon(Icons.edit),
      ),
    );
  }
}