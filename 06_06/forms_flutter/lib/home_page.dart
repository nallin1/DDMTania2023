// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myText = "";
  TextEditingController textInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: SizedBox(
                width: 0.8 * (MediaQuery.of(context).size.width),
                child: TextField(
                  controller: textInputController,
                  onChanged: (value) {
                    print(value);
                    myText = value;
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    textInputController.clear();
                    myText = textInputController.text;
                    setState(() {});
                  },
                  child: Icon(Icons.delete),
                ),
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  onPressed: () {
                    myText = textInputController.text;
                    setState(() {});
                  },
                  child: Icon(Icons.thumb_up),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Texto: $myText",
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () { 
                Navigator.pushNamed(context, '/');
              },
            ),
            IconButton(
              icon: Icon(Icons.people),
              onPressed: () { 
                Navigator.pushNamed(context, '/cadastrarAluno');
              },
            ),
            IconButton(
              icon: Icon(Icons.calculate),
              onPressed: () {
                Navigator.pushNamed(context, '/calculadora');
              },
            ),
          ],
        ),
      ),
    );
  }
}
