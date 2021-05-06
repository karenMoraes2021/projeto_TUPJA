import 'package:flutter/material.dart';

class RedefinirSenha extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<RedefinirSenha> {
  
  final _senhaAtualController = TextEditingController(); //SenhaAtual
  final _senhaNovaController = TextEditingController(); //SenhaNova
  final _nomeController = TextEditingController(); //Nome
 
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Redefinir Senha'),
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
            controller: _senhaAtualController,
            decoration:
                InputDecoration(border: OutlineInputBorder(), labelText: "Digite a Senha Atual"),
                 keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 8.0,
          ),
          TextFormField(
            controller: _senhaNovaController,
            decoration:
                InputDecoration(border: OutlineInputBorder(), labelText: "Digite a Nova Senha"),
                 keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 8.0,
          ),
          SizedBox(
            width: 25,
            height: 50,
            child: ElevatedButton(
                onPressed: (){
                  
                },
                child: Text('Salvar')),
          ),
        ],
      ),
    );
  }
}
