import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String nome;
  final String email;
  final String senha;

  const SecondPage(
      {super.key,
      required this.nome,
      required this.email,
      required this.senha});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            //Icon(Icons.person, size: 100, color: Theme.of(context).colorScheme.primary),
            SizedBox(height: 20),
            Text('💜 Usuário logado com sucesso !',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text("Nome: " + widget.nome,
                style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("Email: " + widget.email,
                style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("Senha: " + widget.senha,
                style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
