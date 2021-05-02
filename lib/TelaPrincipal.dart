// MENU PRINCIPAL
//
import 'package:flutter/material.dart';

class MenuPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
              colors: [Colors.blueGrey, Colors.lightBlueAccent, Colors.grey]),
            ),
            child: Column(
              children: [
                SizedBox(height: 10),
                  ListTile(
                  leading: Icon(Icons.person_add, color: Colors.black,),
                  title: Text('Cadastro',
                      style: TextStyle(fontSize: 12, color: Colors.white)),
                  subtitle: Text('Cadastra, Edita e Exclui',
                      style: TextStyle(fontSize: 12, color: Colors.black)),
                  onTap: () {
                    Navigator.pushNamed(context, '/Cadastro');
                  },
                  hoverColor: Colors.lightBlueAccent[900],
                ),
                ListTile(
                  leading: Icon(Icons.calendar_today_outlined, color: Colors.black),
                  title: Text('\n Calendário / Recados',
                      style: TextStyle(fontSize: 12, color: Colors.white)),
                  subtitle: Text('\n Dias das Giras \n Recados\n.',
                      style: TextStyle(fontSize: 12, color: Colors.black)),
                  onTap: () {
                    Navigator.pushNamed(context, '/calendario');
                  },
                  hoverColor: Colors.blue[50],
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Icon(Icons.settings_applications, color: Colors.black),
                  title: Text('Configurações',
                      style: TextStyle(fontSize: 12, color: Colors.white)),
                  subtitle: Text('Alterar Senha, Dados Pessoais, Perfil',
                      style: TextStyle(fontSize: 12, color: Colors.black)),
                  onTap: () {
                    Navigator.pushNamed(context, '/list3');
                  },
                  hoverColor: Colors.blue[50],
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Icon(Icons.shopping_cart_outlined, color: Colors.black),
                  title: Text('Estoque',
                      style: TextStyle(fontSize: 12, color: Colors.white)),
                  subtitle: Text('Velas, Cigarros e Produtos Diversos.',
                      style: TextStyle(fontSize: 12, color: Colors.black)),
                  onTap: () {
                    Navigator.pushNamed(context, '/list2');
                  },
                  hoverColor: Colors.grey[50],
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Icon(Icons.person, color: Colors.black),
                  title: Text('Sobre o APP',
                      style: TextStyle(fontSize: 12, color: Colors.white)),
                  subtitle: Text('Versão, Objetivo e Publico Alvo',
                      style: TextStyle(fontSize: 12, color: Colors.black)),
                  onTap: () {
                    Navigator.pushNamed(context, '/list3');
                  },
                  hoverColor: Colors.blue[50],
                ),
                
                SizedBox(height: 10),
                ListTile(
                  leading: Icon(Icons.logout_outlined, color: Colors.black),
                  title: Text('Sair',
                      style: TextStyle(fontSize: 12, color: Colors.white)),
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  hoverColor: Colors.blue[50],
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
          backgroundColor: Colors.lightBlue[600],
          title: Center(
            child: Text(
              'Terreiro Pai João de Aruanda',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )),
      body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
              colors: [Colors.blueGrey, Colors.lightBlueAccent, Colors.grey]),
            ),
        child: Center(
          child: Container(
                        width: 300,
                        height: 300,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),                        
                            child: Image.asset('lib/imagem/PaiJoao.jpeg')),
                            alignment: Alignment.center,
                      ),
        ),
      ),
    );
  }
}
