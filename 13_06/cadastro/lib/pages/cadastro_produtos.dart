import 'package:flutter/material.dart';

import '../components/bottom_nav.dart';

class CadastroProdutosPage extends StatefulWidget {
  const CadastroProdutosPage({super.key});

  @override
  State<CadastroProdutosPage> createState() => _CadastroProdutosPageState();
}

class _CadastroProdutosPageState extends State<CadastroProdutosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: MyBottomNav(),
    );
  }
}