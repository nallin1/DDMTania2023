import 'package:floricultura/alterar_flores.dart';
import 'package:floricultura/cadastrar_flores.dart';
import 'package:floricultura/lista_flores.dart';
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
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const CadastrarFlores(),
        '/listaFlores': (context) => const Lista_Flores(),
        //'/alterarFlores': (context) => const AlterarFlores(florAlterada: ),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
        useMaterial3: true,
      ),
    );
  }
}
