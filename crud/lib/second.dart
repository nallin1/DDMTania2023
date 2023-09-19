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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: Text("Lista de Alunos"),
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text(listaAlunos[index].nome[0]),
                          backgroundColor: Colors.blue[200],
                        ),
                        title: Text("Nome: " + listaAlunos[index].nome),
                        subtitle: Text(
                          "RA: " + listaAlunos[index].ra.toString() + "\n" + "Email: " + listaAlunos[index].email + "\n" + "Senha: " + listaAlunos[index].senha.toString(),
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
                                            aluno: listaAlunos[index],
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
                    itemCount: listaAlunos.length)),
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
        ));
  }
}
