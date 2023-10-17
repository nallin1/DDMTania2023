import 'package:to_do_list/Tarefa.dart';

class TarefaRepository {
  List<Tarefa> listaTarefas = [];

  void addTarefa(Tarefa tarefa) {
    listaTarefas.add(tarefa);
  }

  void removeTarefa(Tarefa tarefa) {
    listaTarefas.remove(tarefa);
  }

  void concluiTarefa(Tarefa tarefa) {
    tarefa.concluida = true;
  }

  void desfazTarefa(Tarefa tarefa) {
    tarefa.concluida = false;
  }

  List<Tarefa> getTarefas() {
    return listaTarefas;
  }
}