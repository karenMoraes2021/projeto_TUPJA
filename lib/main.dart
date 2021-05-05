//
// main.dart
//

import 'package:flutter/material.dart';
import 'package:projeto_TUPJA/t_configPages.dart';
import 'loginPage.dart';
import 't_menuPage.dart';
import 't_sobrePage.dart';
import 't_cadastroMedPage.dart';
import 't_estoquePage.dart';
import 't_recadosPage.dart';
import 't_configPages.dart';
import 'RedefinirSenha.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'My Project',
    initialRoute: '/login',
    routes: {
      '/login': (context) => Login(),
      '/sobre': (context) => Sobre(),
      '/menu': (context) => Menu(),
      '/cadastroMedium': (context) => CadastroMedium(),
      '/estoque': (context) => Estoque(),
      '/recados': (context) => Recados(),
      '/configuracao': (context) => Configuracoes(),
      '/redefinir': (context) => RedefinirSenha(),
    },
    theme: ThemeData(
        primaryColor: Colors.blueGrey,
        brightness: Brightness.light,
        //backgroundColor: Colors.orange,
        //accentColor: Colors.cyan,
        fontFamily: 'Georgia',
        textTheme: TextTheme(
          headline4: TextStyle(fontWeight: FontWeight.bold),
          headline6: TextStyle(fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 20),
          bodyText2: TextStyle(fontSize: 16),
        )),
  ));
}

class VerificaLogin {
  String usuario = '';
  String pass = '';

  bool validaUser() {
    if (usuario != 'user' || pass != 'admin') return false;
    return true;
  }
}
