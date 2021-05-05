import 'package:flutter/material.dart';

class CadastroForm extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<CadastroForm> {
  //final TextEditingController _nomeMedium = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Formulário de Cadastramento')),
      body: ListView(
        children: [
          Row(
            children: [
              //nomeMedium(_nomeMedium),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: '',
                  labelText: 'Nome do médium'
                ),
                //controller: _nomeMedium
              )
            ],
          ), // nome
          //Row(), // CPF
          //Row(), // RG
          //Row(), // dt_nascimento
          //Row(), // endereco
          //Row(), // Fone 1
          //Row(), // Fone 2
          Row(
            children: [
              ElevatedButton(
                child: Text('Cadastrar'),
                onPressed: () {
                  //String nome = _nomeMedium.text;
                  Navigator.pop(context);
                }
              ),
            ],
          ), // Botao
      ]),
    );
  }
}

Widget nomeMedium(controller) {
  return TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.person),
        hintText: '',
        labelText: 'Nome do médium'),
      controller: controller);
}