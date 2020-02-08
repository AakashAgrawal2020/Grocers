import 'package:flutter/material.dart';

class Hamburger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Drawer(
      elevation: 10.0,
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'GROCERS',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.lightGreenAccent[700],
            ),
          ),
          ListTile(
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.pop(context);
              // Update the state of the app.
              // ...
            },
          ),
          Divider(
            color: Colors.lightGreenAccent[700],
            thickness: 1.0,
          ),
          ListTile(
            title: Text(
              'Notifications',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.pop(context);
              // Update the state of the app.
              // ...
            },
          ),
          Divider(
            color: Colors.lightGreenAccent[700],
            thickness: 1.0,
          ),
          ListTile(
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.pop(context);
              // Update the state of the app.
              // ...
            },
          ),
          Divider(
            color: Colors.lightGreenAccent[700],
            thickness: 1.0,
          ),
        ],
      ),
    ));
  }
}
