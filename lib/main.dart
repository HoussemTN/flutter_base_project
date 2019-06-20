import 'package:flutter/material.dart';
import 'package:base_project/pages/TabsPage.dart';
import 'package:base_project/pages/SpalshPage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
   routes: {
     'TabsRoute':(context)=>TabsPage(),
   },
    home: SplashPage(),
    );
  }
}




