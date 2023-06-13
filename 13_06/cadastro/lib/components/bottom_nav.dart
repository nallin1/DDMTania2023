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
      currentIndex: selectedIndex,
      selectedItemColor: Colors.lightBlue,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Clientes'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag), label: 'Produtos'),
      ],
      backgroundColor: Colors.grey[200],
      onTap: (int index) {
        setState(() {
          selectedIndex = index;
        });
        if (index == 0) {
          Navigator.pushNamed(context, '/');
        } else if (index == 1) {
          Navigator.pushNamed(context, '/cadastroClientes');
        } else if (index == 2) {
          Navigator.pushNamed(context, '/cadastroProdutos');
        }
      },
    );
  }
}