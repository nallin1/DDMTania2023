// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:floricultura/model/Flor.dart';
import 'package:floricultura/model/flor_repository.dart';
import 'package:flutter/material.dart';

class CadastrarFlores extends StatefulWidget {
  const CadastrarFlores({super.key});

  @override
  State<CadastrarFlores> createState() => _CadastrarFloresState();
}

class _CadastrarFloresState extends State<CadastrarFlores> {
  final _formKey = GlobalKey<FormState>();
  // controllers
  final especieController = TextEditingController();
  final quantidadeController = TextEditingController();
  final precoController = TextEditingController();
  final categoriaController = TextEditingController();

  FlorRepository floresRepo = FlorRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Floricultura',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Icon(
              Icons.spa_outlined,
              size: 100,
              color: Colors.teal[300],
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 0.8 * (MediaQuery.of(context).size.width),
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, informe a espécie';
                          }
                          return null;
                        },
                        controller: especieController,
                        decoration: InputDecoration(
                          labelText: 'Espécie',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, informe a quantidade';
                          }
                          return null;
                        },
                        controller: quantidadeController,
                        decoration: InputDecoration(
                          labelText: 'Quantidade',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, informe a preço';
                          }
                          return null;
                        },
                        controller: precoController,
                        decoration: InputDecoration(
                          labelText: 'Preço',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, informe a categoria';
                          }
                          return null;
                        },
                        controller: categoriaController,
                        decoration: InputDecoration(
                          labelText: 'Categoria',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 30),
                      // botao para enviar
                      FloatingActionButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            try {
                              final Flor flor = Flor(
                                especieController.text,
                                int.parse(quantidadeController.text),
                                double.parse(precoController.text),
                                categoriaController.text);

                            floresRepo.addFlor(flor);
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Flor cadastrada!')));
                            Navigator.pushNamed(context, '/listaFlores');
                            } catch (e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Flor já cadastrada...')));
                            }
                          }
                        },
                        child: Icon(Icons.send),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
