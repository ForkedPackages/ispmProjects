import 'package:flutter/material.dart';
import 'package:ultra_app/homePage.dart';
import 'package:ultra_app/prjects.dart';

import 'Settings.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[HomePage(), Projects(), Settings()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Doctors'), backgroundColor: Colors.green),
        BottomNavigationBarItem(icon: Icon(Icons.library_books), title: Text('Projects'), backgroundColor: Colors.yellow),
        BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('Settings'), backgroundColor: Colors.yellow),
      ], currentIndex: _selectedIndex, selectedItemColor: Colors.black, iconSize: 40, onTap: _onItemTapped, elevation: 5),
    );
  }
}
