// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cadastro/model/Cliente/Cliente.dart';
import 'package:cadastro/model/Cliente/ClienteRepository.dart';
import 'package:flutter/material.dart';

import '../components/bottom_nav.dart';

class CadastroClientesPage extends StatefulWidget {
  const CadastroClientesPage({super.key});

  @override
  State<CadastroClientesPage> createState() => _CadastroClientesPageState();
}

class _CadastroClientesPageState extends State<CadastroClientesPage> {
  String _nome = "";
  int _idade = 0;
  String _email = "";
  String _telefone = "";
  int _cpf = 0;

  ClienteRepository _clienteRepository = ClienteRepository();

  TextEditingController _nomeController = TextEditingController();
  TextEditingController _idadeController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _telefoneController = TextEditingController();
  TextEditingController _cpfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Icon(
                Icons.people,
                size: 100,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Cadastro de Clientes',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 0.8 * MediaQuery.of(context).size.width,
            child: TextField(
              controller: _nomeController,
              decoration: InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 0.8 * MediaQuery.of(context).size.width,
            child: TextField(
              controller: _idadeController,
              decoration: InputDecoration(
                labelText: 'Idade',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 0.8 * MediaQuery.of(context).size.width,
            child: TextField(
              controller: _telefoneController,
              decoration: InputDecoration(
                labelText: 'Telefone',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 0.8 * MediaQuery.of(context).size.width,
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 0.8 * MediaQuery.of(context).size.width,
            child: TextField(
              controller: _cpfController,
              decoration: InputDecoration(
                labelText: 'CPF',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _nome = _nomeController.text;
                      _idade = int.parse(_idadeController.text);
                      _telefone = _telefoneController.text;
                      _email = _emailController.text;
                      _cpf = int.parse(_cpfController.text);

                      Cliente cliente =
                          Cliente(_nome, _idade, _telefone, _email, _cpf);
                      _clienteRepository.addListClientes(cliente);
                      print("Cliente adicionado com sucesso:");
                      cliente.printCliente();
                      final snackBar = SnackBar(
                        content: Text('Cliente adicionado com sucesso!'),
                        action: SnackBarAction(
                          label: 'Fechar',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    });
                  },
                  child: Icon(Icons.save)),
              SizedBox(
                width: 20,
              ),
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _nomeController.text = "";
                      _idadeController.text = "";
                      _telefoneController.text = "";
                      _emailController.text = "";
                      _cpfController.text = "";
                    });
                  },
                  child: Icon(Icons.delete))
            ],
          )
        ],
      )),
      bottomNavigationBar: MyBottomNav(),
    );
  }
}
