import 'package:flutter/material.dart';

class ListarFlores extends StatefulWidget {
  const ListarFlores({super.key});

  @override
  State<ListarFlores> createState() => _ListarFloresState();
}

class _ListarFloresState extends State<ListarFlores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}
