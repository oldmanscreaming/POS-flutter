import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        //IMPORTANT: Rremove any padding from ListView
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('Naviagation Menu'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Homepage'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/');
            },
          ),
          ListTile(
            title: Text('Add Category'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/addcategory');
            },
          ),
        ],
      ),
    );
  }
}
