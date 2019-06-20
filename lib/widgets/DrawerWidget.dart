import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DrawerWidgetState();
  }
}

class DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        DrawerHeader(
          child: Text(
            'Drawer Header',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          title: Text("Example"),
          onTap: () {
            setState(() {});
          },
        ),
      ]),
    );
  }
}
