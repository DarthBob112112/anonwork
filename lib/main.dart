import 'package:flutter/material.dart';
import 'mainscreen.dart';

final myApp=MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => MainScreen()
  },
);

void main() {
  runApp(myApp);
}

