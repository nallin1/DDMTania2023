// ignore_for_file: prefer_const_constructors
import 'package:crud/Aluno.dart';
import 'package:crud/aluno_repo.dart';
import 'package:crud/second.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _raController = TextEditingController();
  AlunoRepository alRepository = AlunoRepository();
  String email = "";
  String nome = "";
  String senha = "";
  int ra = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Icon(
                  Icons.login,
                  size: 40,
                  color: Theme.of(context).colorScheme.primary,
                ),
                SizedBox(width: 20),
                Text(
                  "Cadastro de Aluno",
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
            SizedBox(height: 30),
            // text field
            Form(
                key: _loginFormKey,
                child: Column(
                  children: [
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        controller: _nameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite um nome';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Nome',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: _raController,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 5) {
                            return 'Digite um ra válido';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'RA',
                        ),
                      ),
                    ),

                    SizedBox(height: 20),
                    // text field
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        controller: _emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite um texto';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // buttom for login
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        obscureText: true,
                        controller: _senhaController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite um texto';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Senha',
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Theme.of(context).colorScheme.primary),
                        ),
                        onPressed: () {
                          if (_loginFormKey.currentState!.validate()) {
                            nome = _nameController.text;
                            email = _emailController.text;
                            senha = _senhaController.text;
                            ra = int.parse(_raController.text);
                            Aluno al = new Aluno(ra, nome, email, senha);
                            alRepository.addAluno(al);
                            print("Aluno cadastrado com sucesso ! \n");
                            alRepository.printOneAluno(ra);
                            alRepository.printAllAlunos();
                            Navigator.pushNamed(context, '/listAlunos');
                          }
                        },
                        child: const Text(
                          'Cadastrar',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
