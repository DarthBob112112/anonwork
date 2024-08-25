import 'package:anonwork/post_work.dart';
import 'package:flutter/material.dart';
import 'post_work.dart';
import 'mainscreen.dart';

final myApp = MaterialApp(
  initialRoute: '/',
  routes: {'/': (context) => PostScreen()},
  theme: ThemeData(
    primaryColor: Colors.white60,
    brightness: Brightness.dark,
    fontFamily: 'JosefinSans',
  ),
);

void main() {
  runApp(myApp);
}
