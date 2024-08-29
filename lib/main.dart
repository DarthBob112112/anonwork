// import 'package:anonwork/post_work.dart';
import 'dart:js';

import 'package:flutter/material.dart';
import 'post_work.dart';
import 'mainscreen.dart';
import 'home.dart';
// import 'contract_funcs.dart';

final myApp = MaterialApp(
  initialRoute: '/contract',
  routes: {
    '/': (context) => PostScreen(),
    '/contract': (context) => HomePage(),
  },
  theme: ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: WidgetStateColor.transparent,
          padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),
          ),
          side: const WidgetStatePropertyAll(
            BorderSide(
              color: Colors.white54,
            ),
          ),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          textStyle: const WidgetStatePropertyAll(TextStyle(
            fontFamily: 'JosefinSans',
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ))),
    ),
    primaryColor: Colors.white60,
    brightness: Brightness.dark,
    fontFamily: 'JosefinSans',
  ),
);

void main() {
  runApp(myApp);
}
