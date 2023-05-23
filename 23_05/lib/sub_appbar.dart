// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SubAppBar extends StatelessWidget {
  const SubAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      backgroundColor: Colors.blue[900],
      title: Text(
        "Meu Portfólio",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      actions: [
        GestureDetector(
          child: Icon(
            Icons.accessibility,
            color: Colors.white,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          child: Icon(
            Icons.control_point_duplicate,
            color: Colors.white,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/contador');
          },
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          child: Icon(
            Icons.info,
            color: Colors.white,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/sobre');
          },
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
