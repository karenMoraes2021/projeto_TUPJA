import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String senha = '';
  bool esqueceSenha = true ; 

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.blue[50],
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset('lib/imagem/Pai.jpg')),
                      alignment: Alignment.center,
                    ),
                    Center(
                        child: Column(
                      children: [
                        Text('\n TUPJA ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 45,
                                fontStyle: FontStyle.italic)),
                        Text('\n Terreiro Pai João de Aruanda \n',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontStyle: FontStyle.italic))
                      ],
                    )),
                    TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      decoration: InputDecoration(
                          icon: Icon(Icons.person, color: Colors.grey[900]),
                          labelStyle: TextStyle(color: Colors.grey),
                          labelText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                    Container(height: 10),
                    TextField(
                      onChanged: (text) {
                        senha = text;
                      },
                      keyboardType: TextInputType.number,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.black),
                          icon: Icon(Icons.vpn_key, color: Colors.grey[900]),
                          labelText: 'Senha',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                    Container(height: 15),
                    Container(
                      child: ButtonTheme(
                        buttonColor: Colors.black,
                        child: TextButton(
                          onPressed: () {
                            //  if (email == 'aluno@fatec.sp.gov.br' && senha == '1234') {
                            Navigator.of(context).pushNamed('/menu');
                            //  } else {
                            //    print('Login Inválido');
                            //     }
                          },
                          child: Text('Entrar ',
                              style: TextStyle(
                                  color: Colors.indigoAccent,
                                  fontSize: 30,
                                  fontStyle: FontStyle.italic)),
                        ),
                      ),
                    ),
                    Container(
                      child: ButtonTheme(
                        buttonColor: Colors.indigoAccent,
                        child: TextButton(
                          onPressed: () {
                            if (esqueceSenha) {
                              Navigator.of(context)
                                  .pushNamed('/recuperarSenha');
                            } else {
                              Navigator.of(context).pop();
                            }
                          },
                          child: Text('\n Recuperar Senha',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
