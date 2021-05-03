import 'package:flutter/material.dart';

class TelaSobreDesenv extends StatefulWidget {
  @override
  _TelaSobreDesenvState createState() => _TelaSobreDesenvState();
}

class _TelaSobreDesenvState extends State<TelaSobreDesenv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightBlue[600],
            title: Center(
                child: Text(
              'Sobre',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontStyle: FontStyle.italic),
            ))),
        backgroundColor: Colors.white,
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blueGrey,
                Colors.lightBlueAccent,
                Colors.grey
              ]),
            ),
            padding: EdgeInsets.all(20),
            child: ListView(children: [
              Container(
                  width: 200,
                  height: 200,
                  child: Image.asset('lib/imagem/Pai.jpg')),
              Container(height: 20),
              Text(
                '\n\n TEMA DESENVOLVIDO: Aplicativo para um Terreiro de Umbanda, gerenciando todas as funções administrativas\n\n\n\n' +
                    'OBJETIVO DO APP: Ajudar no auxilio dos Médiuns sobre os dias das giras bem como os recados da semana e controle do estoque',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontStyle: FontStyle.italic),
              ),
              Container(
                padding: EdgeInsets.all(40),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          '\n\n\n' +
                              'Desenvolvedor(a) do Protótipo: \n\n Karen dos Santos Moraes\n ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontStyle: FontStyle.italic)),
                      Container(
                          width: 200,
                          height: 200,
                          child: Image.asset('lib/imagem/Karen.jpg')),
                      Container(width: 150, child: Center()),
                    ]),
              )
            ])));
  }
}
