import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ultra_app/authPage.dart';
import 'package:ultra_app/deatels_screen.dart';
import 'package:ultra_app/homePage.dart';

import 'appScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {'/home_page': (context) => HomePage(), '/auth': (context) => Auth(), '/deatels': (context) => Description()},
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: MyNavigationBar(),
    );
  }
}
