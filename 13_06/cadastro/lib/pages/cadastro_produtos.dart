// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../components/bottom_nav.dart';
import '../model/Produto/Produto.dart';
import '../model/Produto/ProdutoRepository.dart';

class CadastroProdutosPage extends StatefulWidget {
  const CadastroProdutosPage({super.key});

  @override
  State<CadastroProdutosPage> createState() => _CadastroProdutosPageState();
}

class _CadastroProdutosPageState extends State<CadastroProdutosPage> {
  String _nome = "";
  String _descricao = "";
  double _preco = 0;
  String _validade = "";

  ProdutoRepository _produtoRepository = ProdutoRepository();

  TextEditingController _nomeController = TextEditingController();
  TextEditingController _descricaoController = TextEditingController();
  TextEditingController _precoController = TextEditingController();
  TextEditingController _validadeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Icon(
                Icons.shopping_cart,
                size: 100,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Cadastro de Produtos',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 0.8 * MediaQuery.of(context).size.width,
            child: TextField(
              controller: _nomeController,
              decoration: InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 0.8 * MediaQuery.of(context).size.width,
            child: TextField(
              controller: _descricaoController,
              decoration: InputDecoration(
                labelText: 'Descrição',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 0.8 * MediaQuery.of(context).size.width,
            child: TextField(
              controller: _precoController,
              decoration: InputDecoration(
                labelText: 'Preço',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 0.8 * MediaQuery.of(context).size.width,
            child: TextField(
              controller: _validadeController,
              decoration: InputDecoration(
                labelText: 'Validade',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _nome = _nomeController.text;
                      _descricao = _descricaoController.text;
                      _preco = double.parse(_precoController.text);
                      _validade = _validadeController.text;

                      Produto produto = Produto(
                        _nome,
                        _descricao,
                        _preco,
                        _validade,
                      );
                      _produtoRepository.addListProdutos(produto);
                      print("Produto adicionado com sucesso: \n $produto");
                      produto.printProduto();
                      final snackBar = SnackBar(
                        content: Text('Produto adicionado com sucesso!'),
                        action: SnackBarAction(
                          label: 'Fechar',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    });
                  },
                  child: Icon(Icons.save)),
              SizedBox(
                width: 20,
              ),
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _nomeController.clear();
                      _descricaoController.clear();
                      _precoController.clear();
                      _validadeController.clear();
                    });
                  },
                  child: Icon(Icons.delete))
            ],
          )
        ],
      )),
      bottomNavigationBar: MyBottomNav(),
    );
  }
}
