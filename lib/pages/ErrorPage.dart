import 'package:flutter/material.dart';

Widget getErrorWidget(FlutterErrorDetails error) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text("Error Occured"),
        )
      ],
    ),
  );
}
