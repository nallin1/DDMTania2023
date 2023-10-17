// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:to_do_list/Tarefa.dart';
import 'package:to_do_list/tarefa_repository.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  final TextEditingController _tarefaController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TarefaRepository tarefaRepository = TarefaRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          centerTitle: true,
          title: const Text(
            'Lista de Tarefas',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Form(
                  key: _formKey,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Row(
                      children: [
                        Expanded(
                            child: TextFormField(
                          controller: _tarefaController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Digite uma tarefa';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            labelText: "Tarefa",
                            hintText: 'Digite uma tarefa',
                            border: OutlineInputBorder(),
                          ),
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              try {
                                tarefaRepository.addTarefa(
                                    Tarefa(_tarefaController.text, false));
                                // print("Tarefa adicionada com sucesso!\n");

                                _tarefaController.clear();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content:
                                        Text('Tarefa adicionada com sucesso!'),
                                  ),
                                );
                                setState(() {});
                              } catch (e) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Erro ao adicionar tarefa!'),
                                  ),
                                );
                              }
                            }
                          },
                          icon: const Icon(
                            Icons.add,
                          ),
                        )
                      ],
                    ),
                  )),
                  SizedBox(height: 20,),
              Expanded(
                  child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                    leading: Icon(Icons.task),
                    title: Text(tarefaRepository.listaTarefas[index].nome),
                    trailing: Checkbox(
                      value: tarefaRepository.listaTarefas[index].concluida,
                      onChanged: (value) {
                        setState(() {
                          if (value == true) {
                            tarefaRepository.concluiTarefa(
                                tarefaRepository.listaTarefas[index]);
                                if (tarefaRepository.listaTarefas[index].concluida) {
                             print("Tarefa de nome: " +
                                tarefaRepository.listaTarefas[index].nome +
                                " teve seu status mudado para concluída");
                           }
                          } else {
                            tarefaRepository.desfazTarefa(
                                tarefaRepository.listaTarefas[index]);
                           if (!tarefaRepository.listaTarefas[index].concluida) {
                             print("Tarefa de nome: " +
                                tarefaRepository.listaTarefas[index].nome +
                                " teve seu status mudado para não concluída");
                           }
                          }
                        });
                      },
                    ),
                  );
                },
                separatorBuilder: (context, index) => Divider(
                  thickness: 2,
                ),
                itemCount: tarefaRepository.listaTarefas.length,
              )),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    tarefaRepository.listaTarefas.clear();
                  });
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    foregroundColor: MaterialStateProperty.all(Colors.black)),
                child: Text("Apagar Tudo"),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
          
        ),
        bottomNavigationBar: BottomAppBar(
        elevation: double.minPositive,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Feito por Nallin 👨‍💻"),
          ],
        ),
      ),);
  }
}
