import 'package:ex_02_flutter/my_bottom_nav_bar.dart';
import 'package:ex_02_flutter/sub_appbar.dart';
import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  const Sobre({super.key});

  @override
  State<Sobre> createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          PreferredSize(child: SubAppBar(), preferredSize: Size.fromHeight(50)),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(),
              width: 200,
              child: Image.asset('assets/sobre.png'),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 300,
              child: Text(
                  "A expressão Lorem ipsum em design gráfico e editoração é um texto padrão em latim utilizado na produção gráfica para preencher os espaços de texto em publicações para testar e ajustar aspectos visuais antes de utilizar conteúdo real."),
            )
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
