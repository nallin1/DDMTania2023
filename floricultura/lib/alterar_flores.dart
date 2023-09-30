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
  // form key
  final formKey = GlobalKey<FormState>();
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
              key: formKey,
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
                  onChanged: (value) {
                    widget.florAlterada.quantidade = int.parse(value);
                  },
                  initialValue: widget.florAlterada.quantidade.toString(),
                  decoration: InputDecoration(
                    labelText: 'Quantidade',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (value) {
                    widget.florAlterada.preco = double.parse(value);

                  },
                  initialValue: widget.florAlterada.preco.toString(),
                  decoration: InputDecoration(
                    labelText: 'Preço',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (value) {
                    widget.florAlterada.categoria = value;
                  },
                  initialValue: widget.florAlterada.categoria,
                  decoration: InputDecoration(
                    labelText: 'Categoria',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                FloatingActionButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        FlorRepository.updateFlor(widget.florAlterada);
                        Navigator.pop(context);
                      } else {
                        print('Formulário inválido');
                      }
                      
                    },
                    child: const Icon(Icons.save)),
              ]),
            ),
          ),
        ));
  }
}
