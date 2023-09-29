// ignore_for_file: prefer_const_constructors

import 'package:floricultura/alterar_flores.dart';
import 'package:floricultura/model/Flor.dart';
import 'package:flutter/material.dart';

import 'model/flor_repository.dart';

class Lista_Flores extends StatefulWidget {
  const Lista_Flores({super.key});

  @override
  State<Lista_Flores> createState() => _Lista_FloresState();
}

class _Lista_FloresState extends State<Lista_Flores> {
  final listaFlores = FlorRepository.flores;

  String especieBusca = "";
  List<Flor> listaBuscaFlores = [];

  @override
  void initState() {
    listaBuscaFlores = List.from(listaFlores);
    super.initState();
  }

  void atualizaLista(String especie) {
    listaBuscaFlores = List.from(listaFlores);

    setState(() {
      listaBuscaFlores = listaBuscaFlores
          .where((Flor flor) => flor.especie.toLowerCase().contains(especie))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Flores',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextFormField(
                    onChanged: (value) {
                      especieBusca = value.toLowerCase();
                      atualizaLista(especieBusca);
                    },
                    decoration: InputDecoration(
                        labelText: 'Pesquisar',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                        )),
                  ),
                )),
          ),
          Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          listaBuscaFlores[index].especie[0].toString(),
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      title: Text(
                        "Espécie: ${listaBuscaFlores[index].especie}",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      subtitle: Text(
                          "Categoria: ${listaBuscaFlores[index].categoria}"),
                      trailing: SizedBox(
                          width: 70,
                          child: Row(
                            children: [
                              Expanded(
                                child: IconButton(
                                    onPressed: () {
                                      Flor flor = listaFlores[index];
                                      FlorRepository.deleteFlor(flor);
                                      atualizaLista(especieBusca);
                                      setState(() {});
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.black,
                                    )),
                              ),
                              Expanded(
                                child: IconButton(
                                    onPressed: () {
                                      
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AlterarFlores(
                                                    florAlterada: listaFlores[index],
                                                  )));
                                      
                                    },
                                    icon: Icon(
                                      Icons.edit,
                                      color: Colors.black,
                                    )),
                              ),
                            ],
                          )),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                        thickness: 2,
                      ),
                  itemCount: listaBuscaFlores.length)),
        ],
      ),
    );
  }
}
