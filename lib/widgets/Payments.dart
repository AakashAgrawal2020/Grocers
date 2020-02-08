import 'package:flutter/material.dart';

class Payments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.lightGreenAccent[700],
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          size: 40,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      title: Text(
        "Payments",
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.notifications,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    ));
  }
}
