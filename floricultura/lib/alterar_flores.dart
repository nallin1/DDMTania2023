// ignore_for_file: prefer_const_constructors

import 'package:floricultura/model/flor_repository.dart';
import 'package:flutter/material.dart';

import 'model/Flor.dart';

class AlterarFlores extends StatefulWidget {
  const AlterarFlores({super.key, required this.florAlterada});

  final Flor florAlterada;

  @override
  State<AlterarFlores> createState() => _AlterarFloresState();
}

class _AlterarFloresState extends State<AlterarFlores> {
  
  final especieController = TextEditingController();
  final quantidadeController = TextEditingController();
  final precoController = TextEditingController();
  final categoriaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Alterar',
              style: TextStyle(fontWeight: FontWeight.w300)),
        ),
        body: Center(
          child: SizedBox(
            width: 0.8 * (MediaQuery.of(context).size.width),
            child: Form(
              child: Column(children: [
                SizedBox(height: 20),
                TextFormField(
                  enabled: false,
                  initialValue: widget.florAlterada.especie,
                  decoration: InputDecoration(
                    labelText: 'Espécie',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  initialValue: widget.florAlterada.quantidade.toString(),
                  decoration: InputDecoration(
                    labelText: 'Quantidade',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  initialValue: widget.florAlterada.preco.toString(),
                  decoration: InputDecoration(
                    labelText: 'Preço',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  initialValue: widget.florAlterada.categoria,
                  decoration: InputDecoration(
                    labelText: 'Categoria',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Flor florAlterada = Flor(
                        especieController.text,
                        int.parse(quantidadeController.text),
                        double.parse(precoController.text),
                        categoriaController.text);
                    
                    FlorRepository.updateFlor(florAlterada);
                    Navigator.pushNamed(context, '/listaFlores');
                  },
                  child: Text('Alterar'),
                ),
              ]),
            ),
          ),
        ));
  }
}
