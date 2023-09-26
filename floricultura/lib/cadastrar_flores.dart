import 'package:flutter/material.dart';

class CadastrarFlores extends StatefulWidget {
  const CadastrarFlores({super.key});

  @override
  State<CadastrarFlores> createState() => _CadastrarFloresState();
}

class _CadastrarFloresState extends State<CadastrarFlores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Icon(Icons.spa_outlined, size: 100,),
          ],
        ),
      ),
    );
  }
}