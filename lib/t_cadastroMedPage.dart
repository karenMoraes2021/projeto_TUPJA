import 'package:flutter/material.dart';
import 't_cadastroMedFormPage.dart';

class CadastroMedium extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<CadastroMedium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Médiuns'),
      ),
      body: Column(
        children: [
          Row(children: [tabelaDados(context)])
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
           await Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => CadastroForm()));
          //teste(result);
        },
        tooltip: 'Cadastrar novo',
        child: const Icon(Icons.add),
      ),
    );
  }
}

Widget tabelaDados(context) {
  var _medium1 = {
    'nome': 'José Maurício',
    'cpf': '999.999.999-00',
    'telefone': '16 98888-8888'
  };

  var _medium2 = {
    'nome': 'Ana Flávia',
    'cpf': '999.999.999-00',
    'telefone': '16 98888-8888'
  };

  var _medium3 = {
    'nome': 'Joaquim Nabuco',
    'cpf': '999.999.999-00',
    'telefone': '16 98888-8888'
  };

  var _medium4 = {
    'nome': 'Isaura Matos',
    'cpf': '999.999.999-00',
    'telefone': '16 98888-8888'
  };

  return DataTable(
    sortAscending: true,
    columns: [
      DataColumn(
        label: Text('Nome'),
      ),
      DataColumn(
        label: Text('CPF'),
      ),
      DataColumn(
        label: Text('Fone Principal'),
      )
    ],
    rows: [
      DataRow(
        cells: [
          DataCell(Text(_medium1['nome'].toString())),
          DataCell(Text(_medium1['cpf'].toString())),
          DataCell(Text(_medium1['telefone'].toString()))
        ],
      ),
      DataRow(
        cells: [
          DataCell(Text(_medium2['nome'].toString())),
          DataCell(Text(_medium2['cpf'].toString())),
          DataCell(Text(_medium2['telefone'].toString()))
        ],
      ),
      DataRow(
        cells: [
          DataCell(Text(_medium3['nome'].toString())),
          DataCell(Text(_medium3['cpf'].toString())),
          DataCell(Text(_medium3['telefone'].toString()))
        ],
      ),
      DataRow(
        cells: [
          DataCell(Text(_medium4['nome'].toString())),
          DataCell(Text(_medium4['cpf'].toString())),
          DataCell(Text(_medium4['telefone'].toString()))
        ],
      ),
    ],
  );
}
