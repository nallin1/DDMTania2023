class Flor {
  String _especie;
  int _quantidade;
  double _preco;
  String _categoria;

  Flor(this._especie, this._quantidade, this._preco, this._categoria);

  String get especie => _especie;
  int get quantidade => _quantidade;
  double get preco => _preco;
  String get categoria => _categoria;

  set especie(String especie) => _especie = especie;
  set peso(int quantidade) => _quantidade = quantidade;
  set preco(double preco) => _preco = preco;
  set categoria(String categoria) => _categoria = categoria;
}