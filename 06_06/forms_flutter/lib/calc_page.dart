import 'package:flutter/material.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  double n1 = 0;
  double n2 = 0;
  String result = "";
  TextEditingController textInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
        backgroundColor: Colors.purple[50],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.calculate,
              size: 150,
              color: Colors.grey[600],
            ),
            SizedBox(
              width: 0.8 * (MediaQuery.of(context).size.width),
              child: Padding(
                padding: EdgeInsets.only(top: 30, bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Número 1",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
            SizedBox(
              width: 0.8 * (MediaQuery.of(context).size.width),
              child: Padding(
                padding: EdgeInsets.only(top: 0, bottom: 30),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Número 2",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.remove),
                ),
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton(onPressed: () {}, child: Text("/")),
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Text("X"),
                ),
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.delete),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: SizedBox(
                child: Text(
                  "Resultado da Operação: $result",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
