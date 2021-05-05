import 'package:flutter/material.dart';

class Recados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Eventos')),
      body: Container(
        alignment: Alignment.topCenter,
        child: tabelaDados(context)
      ),
    );
  }
}

Widget tabelaDados(context) {
  var _evento1 = {
    'nmEvento': 'Teste 1',
    'dcEvento': 'Festa beneficente',
    'dtEvento': '24/07/1980'
  };

  var _evento2 = {
    'nmEvento': 'Teste 1',
    'dcEvento': 'Festa beneficente',
    'dtEvento': '24/07/1980'
  };

  var _evento3 = {
    'nmEvento': 'Teste 1',
    'dcEvento': 'Festa beneficente',
    'dtEvento': '24/07/1980'
  };

  var _evento4 = {
    'nmEvento': 'Teste 1',
    'dcEvento': 'Festa beneficente',
    'dtEvento': '24/07/1980'
  };

  return DataTable(
    columns: [
      DataColumn(
        label: Text('Evento'),
      ),
      DataColumn(
        label: Text('Tipo'),
      ),
      DataColumn(
        label: Text('Data'),
      )
    ],
    rows: [
      DataRow(
        cells: [
          DataCell(Text(_evento1['nmEvento'].toString())),
          DataCell(Text(_evento1['dcEvento'].toString())),
          DataCell(Text(_evento1['dtEvento'].toString()))
        ],
      ),
      DataRow(
        cells: [
          DataCell(Text(_evento2['nmEvento'].toString())),
          DataCell(Text(_evento2['dcEvento'].toString())),
          DataCell(Text(_evento2['dtEvento'].toString()))
        ],
      ),
      DataRow(
        cells: [
          DataCell(Text(_evento3['nmEvento'].toString())),
          DataCell(Text(_evento3['dcEvento'].toString())),
          DataCell(Text(_evento3['dtEvento'].toString()))
        ],
      ),
      DataRow(
        cells: [
          DataCell(Text(_evento4['nmEvento'].toString())),
          DataCell(Text(_evento4['dcEvento'].toString())),
          DataCell(Text(_evento4['dtEvento'].toString()))
        ],
      )
    ],
  );
}
