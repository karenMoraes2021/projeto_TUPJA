import 'package:flutter/material.dart';

class CadastroForm extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<CadastroForm> {
  final _nomeController = TextEditingController(); //Nome
  final _cpfController = TextEditingController(); //CPF
  final _rgController = TextEditingController(); //RG
  final _cepController = TextEditingController(); // CEP
  final _enderecoController = TextEditingController(); // Nome da Rua
  final _bairroController = TextEditingController(); // Bairro
  final _cidadeContoller = TextEditingController(); // Cidade / Localidade
  final _ufController = TextEditingController(); //  Unidade federativa Estado.
  final _sexoController = TextEditingController(); // Sexo
  final _estadoCivilController = TextEditingController(); //Estado Civil
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Médiuns'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          GestureDetector(
            child: TextFormField(
              controller: _nomeController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Nome"),
              keyboardType: TextInputType.name,
              onChanged: (_nomeController) {},
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          TextFormField(
            controller: _cpfController,
            decoration:
                InputDecoration(border: OutlineInputBorder(), labelText: "CPF"),
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 8.0,
          ),
          TextFormField(
            controller: _rgController,
            decoration:
                InputDecoration(border: OutlineInputBorder(), labelText: "RG"),
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 8.0,
          ),
          TextFormField(
            controller: _enderecoController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Endereço"),
            keyboardType: TextInputType.text,
          ),
          SizedBox(
            height: 8.0,
          ),
          TextFormField(
            controller: _bairroController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Bairro"),
            keyboardType: TextInputType.text,
          ),
          SizedBox(
            height: 8.0,
          ),
          TextFormField(
            controller: _ufController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Estado"),
            keyboardType: TextInputType.text,
          ),
          SizedBox(
            height: 8.0,
          ),
          TextFormField(
            controller: _cidadeContoller,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Cidade"),
            keyboardType: TextInputType.text,
          ),
          SizedBox(
            height: 8.0,
          ),
          TextFormField(
            controller: _cepController,
            decoration:
                InputDecoration(border: OutlineInputBorder(), labelText: "CEP"),
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 8.0,
          ),
          TextFormField(
            controller: _sexoController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Sexo"),
            keyboardType: TextInputType.text,
          ),
          SizedBox(
            height: 8.0,
          ),
          TextFormField(
            controller: _estadoCivilController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Estado Civil"),
            keyboardType: TextInputType.text,
          ),
          SizedBox(
            height: 8.0,
          ),
          SizedBox(
            width: 100,
            height: 50,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, _nomeController.text);
                },
                child: Text('Cadastrar')),
          ),
        ],
      ),
    );
  }
}
