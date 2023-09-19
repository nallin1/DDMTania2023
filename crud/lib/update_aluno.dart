// ignore_for_file: prefer_const_constructors

import 'package:crud/aluno_repo.dart';
import 'package:flutter/material.dart';

import 'Aluno.dart';

class UpdateAluno extends StatefulWidget {
  const UpdateAluno({super.key, required this.aluno, required this.indice});
  final Aluno aluno;
  final int indice;

  @override
  State<UpdateAluno> createState() => _UpdateAlunoState();
}

class _UpdateAlunoState extends State<UpdateAluno> {
  void inicializa() {
    _emailController.text = widget.aluno.email;
    _senhaController.text = widget.aluno.senha.toString();
  }

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    inicializa();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text("Atualizar Aluno"),
      ),
      body: Center(
          child: Form(
            key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
                onChanged: (text) {
                  widget.aluno.email = text;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _senhaController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Senha",
                ),
                onChanged: (text) {
                  widget.aluno.senha = text;
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  String senha = widget.aluno.senha;
                  String email = widget.aluno.email;

                  AlunoRepository.updateAluno(email, senha);
                  
                  Navigator.pop(context, widget.aluno);
                }
              },
              child: Text("Atualizar"),
            ),
          ],
        ),
      )),
    );
  }
}
