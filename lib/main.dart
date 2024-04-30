import 'package:exypto/screens/feed_side.dart';
import 'package:flutter/material.dart';
import 'variables.dart';
import 'screens/navbar_side.dart';
import 'dart:core';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

enum deviceType {
  phone,
  tablet,
  smallTablet,
  desktop,
}

class MyApp extends StatefulWidget {
  static var type;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          print(constraints.maxWidth);
          if (constraints.maxWidth <= 1200.0 && constraints.maxWidth >= 800.0) {
            MyApp.type = deviceType.tablet;
          } else if (constraints.maxWidth < 800.0 &&
              constraints.maxWidth > 580.0) {
            MyApp.type = deviceType.smallTablet;
          } else if (constraints.maxWidth > 1200.0) {
            MyApp.type = deviceType.desktop;
          } else {
            MyApp.type = deviceType.phone;
          }
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                (MyApp.type == deviceType.tablet ||
                        MyApp.type == deviceType.phone)
                    ? Container()
                    : NavbarSide(
                        navbarcolor: navbarcolordark,
                      ),
                FeedSide(),
              ],
            ),
          );
        },
      ),
    );
  }
}
