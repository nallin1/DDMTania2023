// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frm_flutter/second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _login_form_key = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();

  String email = "";
  String nome = "";
  String senha = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          SizedBox(height: 100),
          Icon(
            Icons.login,
            size: 100,
            color: Theme.of(context).colorScheme.primary,
          ),
          SizedBox(height: 50),
          // text field
          Form(
              key: _login_form_key,
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
                        if (_login_form_key.currentState!.validate()) {
                          nome = _nameController.text;
                          email = _emailController.text;
                          senha = _senhaController.text;

                          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(nome: nome, email: email, senha: senha)));
                        }
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      )),
    );
  }
}
