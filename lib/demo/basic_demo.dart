import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichTextDemo();
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '中美关系',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontStyle: FontStyle.italic,
          fontSize: 34.0,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '很紧张',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey
            )
          ),
        ]
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '''“但是对于美方的回应，我在这里必须要说几句。”耿爽表示，
      中方在台湾问题上的立场是一贯的明确的，美方当初单方面搞“与台湾关系法”，
      与国际关系准则和中美三个联合公报完全背道而驰，中方从一开始就坚决反对。
      我们敦促美方恪守一个中国原则和中美三个联合公报的规定，多做有利于中美关系和促进台海和平稳定的事情，
      而不是相反''',
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 16.0,
      )
    );
  }
}