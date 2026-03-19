import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(children: [CircleAvatar(), Text('anil@gmial.com')]),
          ),
          ListTile(
            title: Text('Setting'),
            leading: Icon(Icons.settings),
            subtitle: Text('This is a setting page'),
          ),
          ListTile(
            onTap: () {},
            title: Text('Theme'),
            leading: Icon(Icons.mode),
            subtitle: Text('Dark / white mode'),
          ),
        ],
      ),
    );
  }
}
