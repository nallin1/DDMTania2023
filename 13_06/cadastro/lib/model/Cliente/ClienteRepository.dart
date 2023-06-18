import 'package:cadastro/model/Cliente/Cliente.dart';

class ClienteRepository {
  List<Cliente> _clienteRepositoryList = [];

  List<Cliente> get clienteRepositoryList => this._clienteRepositoryList;

  set clienteRepositoryList(List<Cliente> value) =>
      this._clienteRepositoryList = value;

  void addListClientes(Cliente cliente) {
    this._clienteRepositoryList.add(cliente);
  }

  void removeListClientes(Cliente cliente) {
    this._clienteRepositoryList.remove(cliente);
  }

  Cliente getCliente(int index) {
    return this._clienteRepositoryList[index];
  }
}
