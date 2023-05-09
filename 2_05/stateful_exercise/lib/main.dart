import 'package:flutter/material.dart';
import 'package:stateful_exercise/contador.dart';

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
          backgroundColor: Color.fromARGB(18, 0, 68, 255),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              Image.asset('assets/calculater.gif', width: 300,),
              SizedBox(height: 50,),
              MyCounter()
            ]),
          )),
    );
  }
}
