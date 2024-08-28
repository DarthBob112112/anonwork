// import 'package:anonwork/post_work.dart';
import 'dart:js';

import 'package:flutter/material.dart';
import 'post_work.dart';
import 'mainscreen.dart';
// import 'contract_funcs.dart';

final myApp = MaterialApp(
  initialRoute: '/contract',
  routes: {
    '/': (context) => PostScreen(),
    '/contract': (context) => MainScreen(),
  },
  theme: ThemeData(
    primaryColor: Colors.white60,
    brightness: Brightness.dark,
    fontFamily: 'JosefinSans',
  ),
);

void main() {
  runApp(myApp);
}
