class Produto {
  String _nome;
  String _descricao;
  double _preco;
  String _validade;

  get nome => this._nome;

  set nome(final value) => this._nome = value;

  get descricao => this._descricao;

  set descricao(value) => this._descricao = value;

  get preco => this._preco;

  set preco(value) => this._preco = value;

  get validade => this._validade;

  set validade(value) => this._validade = value;

  Produto(this._descricao, this._nome, this._preco, this._validade);

  void printProduto() {
    print('Nome: ${this._nome}');
    print('Descrição: ${this._descricao}');
    print('Preço: ${this._preco}');
    print('Validade: ${this._validade}');
  }
}
