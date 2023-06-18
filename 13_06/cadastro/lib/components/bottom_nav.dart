import 'package:flutter/material.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({super.key});

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Clientes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Produtos',
          ),
        ],
        fixedColor: Colors.grey,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          }
          if (index == 1) {
            Navigator.pushNamed(context, '/cadastroClientes');
          }
          if (index == 2) {
            Navigator.pushNamed(context, '/cadastroProdutos');
          }
        });
  }
}
