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
          child: Column(
            children: [
              SizedBox(height: 10),
                ListTile(
                leading: Icon(Icons.person_add),
                title: Text('Cadastro',
                    style: TextStyle(fontSize: 12, color: Colors.indigoAccent)),
                subtitle: Text('Cadastra, Edita e Exclui',
                    style: TextStyle(fontSize: 12)),
                onTap: () {
                  Navigator.pushNamed(context, '/Cadastro');
                },
                hoverColor: Colors.blue[50],
              ),
              ListTile(
                leading: Icon(Icons.calendar_today_outlined),
                title: Text('\n Calendário / Recados',
                    style: TextStyle(fontSize: 12, color: Colors.indigoAccent)),
                subtitle: Text('\n Dias das Giras \n Recados\n.',
                    style: TextStyle(fontSize: 12)),
                onTap: () {
                  Navigator.pushNamed(context, '/calendario');
                },
                hoverColor: Colors.blue[50],
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.settings_applications),
                title: Text('Configurações',
                    style: TextStyle(fontSize: 12, color: Colors.indigoAccent)),
                subtitle: Text('Alterar Senha, Dados Pessoais, Perfil',
                    style: TextStyle(fontSize: 12)),
                onTap: () {
                  Navigator.pushNamed(context, '/list3');
                },
                hoverColor: Colors.blue[50],
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.shopping_cart_outlined),
                title: Text('Estoque',
                    style: TextStyle(fontSize: 12, color: Colors.indigoAccent)),
                subtitle: Text('Velas, Cigarros e Produtos Diversos.',
                    style: TextStyle(fontSize: 12)),
                onTap: () {
                  Navigator.pushNamed(context, '/list2');
                },
                hoverColor: Colors.blue[50],
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Sobre o APP',
                    style: TextStyle(fontSize: 12, color: Colors.indigoAccent)),
                subtitle: Text('Versão, Objetivo e Publico Alvo',
                    style: TextStyle(fontSize: 12)),
                onTap: () {
                  Navigator.pushNamed(context, '/list3');
                },
                hoverColor: Colors.blue[50],
              ),
              
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.logout_outlined),
                title: Text('Encerrar Sessão',
                    style: TextStyle(fontSize: 12, color: Colors.indigoAccent)),
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                hoverColor: Colors.blue[50],
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
          backgroundColor: Colors.indigo[300],
          title: Center(
            child: Text(
              'Terreiro Pai João de Aruanda',
              style: TextStyle(fontSize: 20, color: Colors.indigoAccent[600]),
            ),
          )),
      backgroundColor: Colors.blue[50],
      body: Center(
        child: Container(
                      width: 300,
                      height: 300,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),                        
                          child: Image.asset('lib/imagem/PaiJoao.jpeg')),
                          alignment: Alignment.center,
                    ),
      ),
    );
  }
}
