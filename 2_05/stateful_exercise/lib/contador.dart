// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => My_CounterState();
}

class My_CounterState extends State<MyCounter> {
  var count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  void decrementCounter() {
    if (count == 0) {
      setState(() {
        count = 0;
      });
    } else {
      setState(() {
        count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          onPressed: decrementCounter,
          backgroundColor: Colors.white,
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              shape: BoxShape.circle,
            ),
            child: Center(
                child: Text(
              count.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          onPressed: incrementCounter,
          backgroundColor: Colors.white,
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}
