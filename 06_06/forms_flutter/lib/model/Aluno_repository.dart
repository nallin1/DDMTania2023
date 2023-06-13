import 'Aluno.dart';

class Aluno_repository {
  List<Aluno> _alunos = [];
  List<Aluno> get alunos => this._alunos;

  set alunos(List<Aluno> value) => this._alunos = value;

  Aluno_repository() {
    _alunos.add(Aluno(123, 'João'));
    _alunos.add(Aluno(456, 'Maria'));
    _alunos.add(Aluno(789, 'José'));
  }

  void addListAlunos(List<Aluno> alunos) {
    _alunos.addAll(alunos);
  }

  void printAlunos() {
    _alunos.forEach((aluno) {
      print('RA: ${aluno.ra} - Nome: ${aluno.nome}');
    });
  }
}
