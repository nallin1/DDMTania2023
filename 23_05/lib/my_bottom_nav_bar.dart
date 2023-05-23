// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: "Início",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.control_point_duplicate), label: "Contador"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Sobre")
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          }
          if (index == 1) {
            Navigator.pushNamed(context, '/contador');
          }
          if (index == 2) {
            Navigator.pushNamed(context, '/sobre');
          }
        });
  }
}
