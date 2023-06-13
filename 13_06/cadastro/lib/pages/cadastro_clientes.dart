import 'package:flutter/material.dart';

import '../components/bottom_nav.dart';

class CadastroClientesPage extends StatefulWidget {
  const CadastroClientesPage({super.key});

  @override
  State<CadastroClientesPage> createState() => _CadastroClientesPageState();
}

class _CadastroClientesPageState extends State<CadastroClientesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        children: [Padding(padding: EdgeInsets.all(20), child: Icon(Icons.people),),],
      )),
      bottomNavigationBar: MyBottomNav(),
    );
  }
}
