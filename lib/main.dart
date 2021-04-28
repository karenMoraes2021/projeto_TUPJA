


import 'package:tupja/TelaPrincipal.dart';
import 'package:tupja/login.dart';
import 'package:flutter/material.dart';

import 'CadastroMedium.dart';
import 'calendario.dart';
import 'ListViewSepareted.dart';
import 'sobre.dart';
import 'login.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'TUPJA',
    initialRoute: '/login',
    routes: {
      '/login': (context)=> Login(),
      '/menu':  (context) => MenuPrincipal(),
      '/calendario': (context) => Calendario(),
      '/Cadastro': (context) => Cadastro(),
      '/list2': (context) => ListViewSepareted(),
      '/list3': (context) => TelaSobreDesenv(),
      
    },
  ));
}


