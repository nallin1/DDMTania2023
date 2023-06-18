class Cliente {
  String _nome;
  int _idade;
  String _email;
  String _telefone;
  int _cpf;
  String get nome => this._nome;

  set nome(String value) => this._nome = value;

  get idade => this._idade;

  set idade(value) => this._idade = value;

  get email => this._email;

  set email(value) => this._email = value;

  get telefone => this._telefone;

  set telefone(value) => this._telefone = value;

  get cpf => this._cpf;

  set cpf(value) => this._cpf = value;

  Cliente(
    this._nome,
    this._idade,
    this._email,
    this._telefone,
    this._cpf,
  );

  void printCliente() {
    print('Nome: ${this._nome}');
    print('Idade: ${this._idade}');
    print('E-mail: ${this._email}');
    print('Telefone: ${this._telefone}');
    print('CPF: ${this._cpf}');
  }
}
