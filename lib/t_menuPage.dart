//
// arquivo t_menu.dart
//

import 'package:flutter/material.dart';
import 'package:projeto_TUPJA/t_configPages.dart';
import 'package:projeto_TUPJA/t_estoquePage.dart';
import 'package:projeto_TUPJA/t_recadosPage.dart';
import 'loginPage.dart';
import 't_sobrePage.dart';
import 't_cadastroMedPage.dart';
import 't_estoquePage.dart';

class Menu extends StatelessWidget {
  static const nomeRota = '/menu';

  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body:  Container(
        child: Image.asset('lib/images/PaiJoao.jpeg'),
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(50),
      ),
      drawer: menuLateral(context),
    );
  }
}



Widget menuLateral(context) {
  final user = ModalRoute.of(context)!.settings.arguments;

  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          child: Text('Bem vindo ' + user.toString()),
          decoration: BoxDecoration(
            color: Colors.blueGrey
          ),
        ),
        ListTile(
          leading: Icon(Icons.date_range),
          title: Text('Eventos'),
          subtitle: Text('Eventos e recados'),
          trailing: Icon(Icons.arrow_forward_outlined),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) => Recados()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.add),
          title: Text('Cadastro'),
          subtitle: Text('Médiuns'),
          trailing: Icon(Icons.arrow_forward_outlined),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) => CadastroMedium()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Configurações'),
          subtitle: Text('Permissões e Segurança'),
          trailing: Icon(Icons.arrow_forward_outlined),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Configuracoes()));
          }
        ),
        ListTile(
          leading: Icon(Icons.add_shopping_cart),
          title: Text('Estoque'),
          subtitle: Text('Itens'),
          trailing: Icon(Icons.arrow_forward_outlined),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) => Estoque()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.question_answer_outlined),
          title: Text('About'),
          subtitle: Text('Sobre'),
          trailing: Icon(Icons.arrow_forward_outlined),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Sobre()));
          }
        ),
        
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Logout'),
          subtitle: Text('Sair'),
          //trailing: Icon(Icons.logout),
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (BuildContext context) => Login()),
              ModalRoute.withName('/'),
            );
          },
        ),

      ],
    ),
  );
}
