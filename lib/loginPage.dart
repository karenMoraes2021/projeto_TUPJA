//
// login.dart
//

import 'package:flutter/material.dart';
import 'main.dart';
import 't_menuPage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  static const nomeRota = '/login';
  VerificaLogin login1 = new VerificaLogin();
   bool esqueceSenha = true ; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(children: [
          SizedBox(
            height: 300,
            child: Image.asset('lib/images/Pai.jpg'),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(),
              labelText: 'Usuário',
            ),
            onChanged: (text) {
              login1.usuario = text;
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            obscuringCharacter: "*",
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_outlined),
              border: OutlineInputBorder(),
              labelText: 'Senha',
            ),
            onChanged: (text) {
              login1.pass = text;
            },
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
                onPressed: () {
                  if (login1.validaUser())
                    Navigator.pushNamed(context, Menu.nomeRota,
                        arguments: login1.usuario.toString());
                  else
                    caixaDialogo("Informe as credenciais corretas...");
                },
                child: Text('Login')),
          ),
             Container(
                      child: ButtonTheme(
                        buttonColor: Colors.indigoAccent,
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/redefinir');
                          },
                          child: Text('\n Redefinir Senha',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic)),
                        ),
                      ),
                    ),
        ]),
      ),
    );
  }

  caixaDialogo(msg) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Resultado'),
            content: Text(msg),
            actions: [
              TextButton(
                child: Text('fechar'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}


