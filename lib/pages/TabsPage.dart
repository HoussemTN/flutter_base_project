import 'package:base_project/pages/ErrorPage.dart';
import 'package:base_project/widgets/DrawerWidget.dart';
import 'package:base_project/pages/HomePage.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<TabsPage> {
  int energy = 10;

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
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    decoration: new BoxDecoration(
                        color: Colors.indigoAccent,
                        borderRadius: new BorderRadius.all(
                          const Radius.circular(40.0),
                        )),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.flash_on, size: 24),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 18.0, bottom: 18.0, right: 10.0),
                          child: Text(
                            "$energy",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CircleAvatar(
                              foregroundColor: Colors.red,
                              backgroundColor: Colors.red,
                              child: IconButton(
                                iconSize: 17,
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    energy++;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
