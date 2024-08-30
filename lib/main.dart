// import 'package:anonwork/post_work.dart';
import 'dart:js';

import 'package:anonwork/funcs.dart';
import 'package:flutter/material.dart';
import 'post_work.dart';
import 'home.dart';
import 'listing_page.dart';
final myApp = MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => HomePage(),
    '/post': (context) => PostScreen(),
    '/listings': (context) => ListingPage(),
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

void main() async{
  await init_metamask();
  // await init_firebase();
  runApp(myApp);
}
