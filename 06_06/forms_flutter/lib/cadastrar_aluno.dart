// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:forms_flutter/model/Aluno_repository.dart';

import 'model/Aluno.dart';

class CadastrarAluno extends StatefulWidget {
  const CadastrarAluno({super.key});

  @override
  State<CadastrarAluno> createState() => _CadastrarAlunoState();
}

class _CadastrarAlunoState extends State<CadastrarAluno> {
  int _ra = 0;
  String _nome = "";

  Aluno_repository aluno_repository = Aluno_repository();
  TextEditingController input_ra = TextEditingController();
  TextEditingController input_nome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Alunos"),
        backgroundColor: Colors.purple[50],
      ),
      body: Center(
        child: Column(
          children: [
            Icon(Icons.people, size: 150, color: Colors.grey),
            SizedBox(
              width: 300,
              child: Padding(
                padding: EdgeInsets.only(top: 30, bottom: 20),
                child: TextField(
                  controller: input_ra,
                  decoration: InputDecoration(
                      labelText: "RA", border: OutlineInputBorder()),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: TextField(
                  controller: input_nome,
                  decoration: InputDecoration(
                      labelText: "Nome", border: OutlineInputBorder()),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (input_nome.text != "" || input_ra.text != "") {
                    _nome = input_nome.text;
                    _ra = int.parse(input_ra.text);
                    for (var ra_aluno in aluno_repository.alunos) {
                      if (_ra != ra_aluno.ra) {
                        Aluno aluno = Aluno(_ra, _nome);
                        aluno_repository.addListAlunos([aluno]);
                        print('Aluno cadastrado com sucesso!\n');
                        aluno_repository.printAlunos();
                      } else {
                        print('RA já cadastrado!');
                      }
                    }
                  } else {
                    print('Preencha todos os campos!\n');
                  }
                },
                child: Text("Cadastrar")),
          ],
        ),
      ),
    );
  }
}
