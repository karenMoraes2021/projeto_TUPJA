import 'package:flutter/material.dart';

class Configuracoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Configurações')),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
              title: Text('Aceitar ou remover Permissões'),
              trailing: Icon(
                Icons.toggle_off, 
                color: Colors.redAccent)),          
          ListTile(
            title: Text('Desativar Biometria'),
            trailing: Icon(
              Icons.toggle_on, 
              color: Colors.greenAccent),
          ),
          ListTile(
            title: Text('Liberar Funções'),
            trailing: Icon(
              Icons.toggle_on,
              color: Colors.greenAccent,
            ),
          ),
          ListTile(
            title: Text('Minha Conta'),
            trailing: Icon(
              Icons.arrow_forward_outlined),
          ),
          ListTile(
            title: Text('Encerrar Minha Conta'),
            trailing: Icon(
              Icons.arrow_forward_outlined),
          )
        ],
      ),
    );
  }
}
