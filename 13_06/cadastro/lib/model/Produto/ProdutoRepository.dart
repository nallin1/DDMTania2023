import 'Produto.dart';

class ProdutoRepository {
  List<Produto> _produtoRepositoryList = [];
  List<Produto> get produtoRepositoryList => this._produtoRepositoryList;

  set produtoRepositoryList(List<Produto> value) =>
      this._produtoRepositoryList = value;

  void addListProdutos(Produto produto) {
    this._produtoRepositoryList.add(produto);
  }

  void removeListProdutos(Produto produto) {
    this._produtoRepositoryList.remove(produto);
  }

  Produto getProduto(int index) {
    return this._produtoRepositoryList[index];
  }
}
