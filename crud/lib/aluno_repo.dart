import 'package:crud/Aluno.dart';

class AlunoRepository {
  static List<Aluno> _alunos = [];

  static get alunos => _alunos;

  // construtor
  AlunoRepository() {
    _alunos = [];
  }

  void addAluno(Aluno aluno) {
    _alunos.add(aluno);
  }

  void printAllAlunos() {
    _alunos.forEach((aluno) {
      print("Aluno: " + aluno.nome + " | " + aluno.email + " | " + aluno.senha + " | " + aluno.ra.toString());
      print("\n");
    });
  }

  void printOneAluno(int ra) {
    _alunos.forEach((aluno) {
      if (aluno.ra == ra) {
        print("Aluno: " + aluno.nome + " | " + aluno.email + " | " + aluno.senha + " | " + aluno.ra.toString());
        print("\n");
      }
    });
  }

  static Aluno getOneAluno(String senha) {
    Aluno al = new Aluno(0, "", "", senha);
    _alunos.forEach((aluno) {
      if (aluno.senha == senha) {
        al = aluno;
      }
    });
    return al;
  }

  static getAlunoByRa(int ra) {
    Aluno al = new Aluno(0, "", "", "");
    _alunos.forEach((aluno) {
      if (aluno.ra == ra) {
        al = aluno;
      }
    });
    return al;
  }
  static void deleteAluno(Aluno al) {
    _alunos.remove(al);
  }

  static void updateAluno(String email, String senha) {
    Aluno al = getOneAluno(senha);
    al.email = email;
    al.senha = senha;

    print("Aluno de ra: ${al.ra} atualizado com sucesso ! \n");
  }
  
}