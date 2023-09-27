// ignore_for_file: prefer_const_constructors

import 'package:floricultura/model/flor_repository.dart';
import 'package:flutter/material.dart';

class ListarFlores extends StatefulWidget {
  const ListarFlores({super.key});

  @override
  State<ListarFlores> createState() => _ListarFloresState();
}

class _ListarFloresState extends State<ListarFlores> {
  final listaFlores = FlorRepository.flores;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(listaFlores[index].especie[0]),
                  ),
                  title: Text(listaFlores[index].especie),
                  subtitle: Text(listaFlores[index].categoria + "|" + listaFlores[index].preco.toString() + "|" + listaFlores[index].quantidade.toString() + "unidades"),
                );
              },
              
              separatorBuilder: (context, index) => Divider(
                    thickness: 2,
                  ),
              itemCount: listaFlores.length)),
    );
  }
}
