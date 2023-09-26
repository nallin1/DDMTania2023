// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_interpolation_to_compose_strings

import 'package:crud/update_aluno.dart';
import 'package:flutter/material.dart';

import 'Aluno.dart';
import 'aluno_repo.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final listaAlunos = AlunoRepository.alunos;

  List<Aluno> listaBusca = [];
  String nomeBusca = "";

  @override
  void initState() {
    listaBusca = List.from(listaAlunos);
    super.initState();
  }

  void atualizaLista(String nome) {
    listaBusca = List.from(listaAlunos);

    setState(() {
      listaBusca = listaAlunos
          .where((Aluno element) => element.nome.toLowerCase().contains(nome.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text("Lista de Alunos"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(10)),
              width: 300,
              child: Form(
                child: TextField(
                  decoration: InputDecoration(
                    icon: Padding(
                        padding: EdgeInsets.all(10), child: Icon(Icons.search)),
                    hintText: "Pesquisar",
                    border: InputBorder.none,
                  ),
                  onChanged: (String nome) {
                    nomeBusca = nome;
                    atualizaLista(nomeBusca);
                  },
                ),
              ),
            ),
          ),
          Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(listaBusca[index].nome[0]),
                        backgroundColor: Colors.blue[200],
                      ),
                      title: Text("Nome: " + listaBusca[index].nome),
                      subtitle: Text(
                        "RA: " +
                            listaBusca[index].ra.toString() +
                            "\n" +
                            "Email: " +
                            listaBusca[index].email +
                            "\n" +
                            "Senha: " +
                            listaBusca[index].senha.toString(),
                        style: TextStyle(fontSize: 15),
                      ),
                      trailing: SizedBox(
                        width: 70,
                        child: Row(
                          children: [
                            Expanded(
                              child: IconButton(
                                  onPressed: () {
                                    Aluno al = listaAlunos[index];
                                    AlunoRepository.deleteAluno(al);
                                    atualizaLista(nomeBusca);
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
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return UpdateAluno(
                                          aluno: listaBusca[index],
                                          indice: index);
                                    }));
                                  },
                                  icon: Icon(
                                    Icons.edit,
                                    color: Colors.black,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                        thickness: 2,
                      ),
                  itemCount: listaBusca.length)),
          // botão para voltar
          Padding(
            padding: EdgeInsets.all(30),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Voltar")),
          ),
        ],
      ),
    );
  }
}
