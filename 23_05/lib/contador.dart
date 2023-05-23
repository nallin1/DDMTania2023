// ignore_for_file: prefer_const_constructors

import 'package:ex_02_flutter/my_bottom_nav_bar.dart';
import 'package:ex_02_flutter/sub_appbar.dart';
import 'package:flutter/material.dart';

import 'my_counter.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // rgba(18,114,233,255)
        backgroundColor: Colors.white,
        body: Center(
          child: Column( children: [
            SubAppBar(),
            Image.network(
              "https://img.freepik.com/free-vector/woman-explaining-girl-how-use-calculator-digit-teacher-child-flat-vector-illustration-education-calculation_74855-13286.jpg?w=2000",
              height: 300,
            ),
            SizedBox(
              height: 40,
            ),
            MyCounter(),
            SizedBox(
              height: 50,
            ),
          ]),
        ), bottomNavigationBar: MyBottomNavigationBar(),);
  }
}
