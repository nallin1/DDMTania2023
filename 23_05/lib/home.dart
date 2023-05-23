// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:ex_02_flutter/sub_appbar.dart';
import 'package:flutter/material.dart';
import 'my_bottom_nav_bar.dart';
import 'sub_appbar.dart';
import 'my_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          PreferredSize(child: SubAppBar(), preferredSize: Size.fromHeight(50)),
      body: Center(
        child: Column(
          children: [
            AppBar(
              title: Align(
                alignment: Alignment.center,
                child: Text(
                  "Bem vindo(a)",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              backgroundColor: Colors.blueAccent,
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/illustration.png',
              width: 300,
            ),
            SizedBox(height: 20),
            SizedBox(
              child: Text(
                "Seja bem vindo(a) à aula de Desenvolvimento de Aplicações para Dispositivos Móveis",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
              width: 300,
            ),
            SizedBox(
              width: 300,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Aqui você vai encontrar:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15, decoration: TextDecoration.underline),
                ),
              ),
            ),
            myItem(conteudo: "Conceitos básicos da Linguagem Dart"),
            myItem(conteudo: "StalessWidgets e StatefulWidgets"),
            myItem(conteudo: "Exercícios Práticos"),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
