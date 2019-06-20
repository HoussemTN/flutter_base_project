import 'package:base_project/pages/ErrorPage.dart';
import 'package:base_project/widgets/DrawerWidget.dart';
import 'package:base_project/pages/HomePage.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<TabsPage> {
  @override
  Widget build(BuildContext context) {
    ErrorWidget.builder = getErrorWidget;
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: 'Home',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text('My Application'),
              bottom: TabBar(tabs: <Widget>[
                Tab(icon: Icon(Icons.my_location), text: 'Tab 1'),
                Tab(icon: Icon(Icons.cloud), text: 'Tab 2'),
              ]),
            ),
            drawer: DrawerWidget(),
            body: TabBarView(
                /*disable tabs scroll
                physics: NeverScrollableScrollPhysics(),*/
                children: <Widget>[
                  MyHomePage(),
                  MyHomePage(),
                ])),
      ),
    );
  }
}
