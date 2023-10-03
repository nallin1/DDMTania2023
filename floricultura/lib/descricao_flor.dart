// ignore_for_file: prefer_const_constructors

import 'package:floricultura/model/Flor.dart';
import 'package:flutter/material.dart';

class DescricaoFlor extends StatefulWidget {
  const DescricaoFlor({super.key, required this.flor});

  final Flor flor;

  @override
  State<DescricaoFlor> createState() => _DescricaoFlorState();
}

class _DescricaoFlorState extends State<DescricaoFlor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.flor.especie,
          style: TextStyle(fontWeight: FontWeight.w300),
        ),

      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            CircleAvatar(
              radius: 80,
              child: Text(
                widget.flor.especie[0],
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 0.8 * (MediaQuery.of(context).size.width),
              child: Column(
                children: [
                  Text(
                    'Espécie: ${widget.flor.especie}',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Quantidade: ${widget.flor.quantidade}',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Preço: ${widget.flor.preco}',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Categoria: ${widget.flor.categoria}',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
