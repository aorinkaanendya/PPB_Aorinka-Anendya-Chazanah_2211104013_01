import 'package:flutter/material.dart';
import 'package:modul6/my_package.dart';
import 'package:modul6/my_tabbar.dart';

class MyBottomnav extends StatefulWidget {
  const MyBottomnav({super.key});

  @override
  State<MyBottomnav> createState() => _MyBottomnavState();
}

class _MyBottomnavState extends State<MyBottomnav> {
  int _currentIndex = 0;

  static List<Widget> page = <Widget>[
    MyPackage(),
  ];

  void _onTappedItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Bottom Navigation Bar"),
        centerTitle: true,
      ),
      body: page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "My Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "My Bookmark",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "My Profile",
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onTappedItem,
      ),
    );
  }
}
