
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vira-Lata Caramelo ❤',
      theme: ThemeData(
        
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Align(
            alignment: Alignment.center,
            child: Text("Fred 🐶"),
          ),
          backgroundColor: Colors.amber[700],
          
          
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(10)),
                  child: Text("Nome: Fred", style: TextStyle(fontSize: 30),),
                ),
                SizedBox(height: 20,),
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.amberAccent, borderRadius: BorderRadius.circular(10)),
                  
                  child: Padding(padding: EdgeInsets.all(20), child:Text("Pai: Alex", style: TextStyle(fontSize: 30),)),
                ),
                SizedBox(height: 20,),
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(10)),
                  child: Padding(padding: EdgeInsets.all(10), child: Text("Mãe: Merilin", style: TextStyle(fontSize: 30),)),
                ),
                SizedBox(height: 20,),
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(10)),
                  child: Text("Irmão: Guilherme", style: TextStyle(fontSize: 30),),
                ),
                SizedBox(height: 30,),
                SizedBox(height: 180, child: Image.network("https://images.pexels.com/photos/3299906/pexels-photo-3299906.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),)
              ],
            ),
        ),
      ),
    );
  }
}
