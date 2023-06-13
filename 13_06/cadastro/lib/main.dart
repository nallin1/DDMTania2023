import 'package:cadastro/pages/cadastro_clientes.dart';
import 'package:cadastro/pages/cadastro_produtos.dart';
import 'package:cadastro/pages/my_home_page.dart';
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
      title: 'Cadastro',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/cadastroClientes': (context) => const CadastroClientesPage(),
        '/cadastroProdutos': (context) => const CadastroProdutosPage(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
    );
  }
}
