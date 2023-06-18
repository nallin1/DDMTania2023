// ignore_for_file: prefer_const_constructors

import 'package:cadastro/components/bottom_nav.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          MouseRegion(
            // TO-DO - Implementar o hover
            onEnter: (event) => onEntered(true),
            onExit: (event) => onEntered(false),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/cadastroClientes');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Icon(
                    Icons.people,
                    size: 100,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/cadastroProdutos');
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Icon(
                  Icons.shopping_cart,
                  size: 100,
                ),
              ),
            ),
          ),
        ],
      )),
      bottomNavigationBar: MyBottomNav(),
    );
  }

  onEntered(bool entered) {}
}
