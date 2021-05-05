//
// arquivo t_sobre.dart
//

import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
//static const nomeRota = '/sobre';

  Widget build(BuildContext context) {
    //final String user = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),        
        children: [
        Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.all(5)),
                Text(
                  'Sobre o App',
                  style: Theme.of(context).textTheme.headline4,
                )
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Expanded(child: Text('TEMA: Aplicativo para um Terreiro de Umbanda, gerenciando todas as funções administrativas')),                   
              ],
            ),
             Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Expanded(child: Text('')),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Expanded(child: Text('OBJETIVO: Ajudar no auxilio dos Médiuns sobre os dias das giras bem como os recados da semana e controle do estoque')),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Expanded(child: Text('')),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(5)),
                Text(
                  'Desenvolvedores',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            Row(children: [
              Flexible(child: desenvolvedor1(context)),
              Flexible(child: desenvolvedor2(context)),
            ])
          ],
        ),
        ],
      ),
      //backgroundColor: Colors.grey,
    );
  }
}

Widget desenvolvedor1(context) {
  return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      //width: 200,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset('lib/images/Karen.jpg', width: 200, height: 200),
            ),
          ),
          Row(children: [
            Text('Karen Moraes', style: Theme.of(context).textTheme.headline6)
          ]), //Nome
          Row(
            children: [
              Expanded(child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur convallis libero quis nibh tincidunt.'))]
          ), // Outra coisa
        ],
      ));
}

Widget desenvolvedor2(context) {
  return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      //width: 200,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.grey[100],  
        border: Border.all(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset('lib/images/perfil1.jpeg',width: 200, height: 200)
            )
          ),
          Row(children: [
            Text('Alessandro Pereira',
                style: Theme.of(context).textTheme.headline6)
          ]), // Nome
          Row(
            children: [
              Expanded(child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur convallis libero quis nibh tincidunt.'))]
          ), // Outra coisa
        ],
      ));
}
