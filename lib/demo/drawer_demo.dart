import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('jancy', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('410958040@qq.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://img1.mukewang.com/53f82a4900019a2101000100-140-140.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage('https://coding.imooc.com/static/module/class/content/img/315/section0-bg.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.yellow.withOpacity(0.6), BlendMode.hardLight),
              ),
            ),
          ),
          ListTile(
            title: Text('Message', textAlign: TextAlign.right),
            trailing: Icon(Icons.message, size: 22.0, color: Colors.black12),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.right),
            trailing: Icon(Icons.favorite, size: 22.0, color: Colors.black12),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Settings', textAlign: TextAlign.right),
            trailing: Icon(Icons.settings, size: 22.0, color: Colors.black12),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
