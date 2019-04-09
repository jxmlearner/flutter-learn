import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SHRINE'),
        leading: IconButton(
          icon: Icon(Icons.menu, semanticLabel: 'menu',),
          onPressed: () {
            print('Menu button');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, semanticLabel: 'search',),
            onPressed: (){
              print('Search button');
            },
          ),
          IconButton(
            icon: Icon(Icons.tune, semanticLabel: 'filter',),
            onPressed: (){
              print('Filter button');
            },
          ),
        ],
      ),
      body: Center(
        child: Text('You did it!'),
      ),
    );
  }
}