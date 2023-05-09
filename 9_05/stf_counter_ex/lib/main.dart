// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stf_counter_ex/my_counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          // rgba(18,114,233,255)
          backgroundColor: Colors.white,
          body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
          )),
    );
  }
}
