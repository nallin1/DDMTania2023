class Aluno {
  int _ra;
  String _nome;
  String _email;
  String _senha;

  Aluno(this._ra, this._nome, this._email, this._senha);

  int get ra => _ra;
  String get nome => _nome;
  String get email => _email;
  String get senha => _senha;

  set ra(int ra) {
    this._ra = ra;
  }
  set nome(String nome) {
    this._nome = nome;
  }
  set email(String email) {
    this._email = email;
  }
  set senha(String senha) {
    this._senha = senha;
  }
}