import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  var lista = [];

  var txtTarefa = TextEditingController();
  var txtDialogo = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Cadastro')),
          backgroundColor: Colors.lightBlue[600],
        ),
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blueGrey,
                Colors.lightBlueAccent,
                Colors.grey
              ]),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.blueGrey,
                      Colors.lightBlueAccent,
                      Colors.grey
                    ]),
                  ),
                  )),
            ));
  }
}
