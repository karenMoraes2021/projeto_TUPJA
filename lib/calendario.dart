//
//CALENDÁRIOS/RECADOS
//
////
import 'package:flutter/material.dart';

class Calendario extends StatelessWidget {
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
          child: Column(children: [
            ListTile(
              leading: Icon(Icons.g_mobiledata),
              title: Text('\n Giras Mensais', style: TextStyle(fontSize: 12)),
              subtitle:
                  Text('\n Dias das Giras.', style: TextStyle(fontSize: 12)),
              onTap: () {
                Navigator.pushNamed(context, '/calendario');
              },
              hoverColor: Colors.blue[50],
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.r_mobiledata),
              title: Text('Recados', style: TextStyle(fontSize: 12)),
              subtitle: Text('Recados Diversos.', style: TextStyle(fontSize: 12)),
              onTap: () {
                Navigator.pushNamed(context, '/ListaRecados');
              },
              hoverColor: Colors.blue[50],
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.arrow_back_ios_sharp),
              title: Text('Voltar', style: TextStyle(fontSize: 12)),
              subtitle:
                  Text('Volta ao Menu Anterior', style: TextStyle(fontSize: 12)),
              onTap: () {
                Navigator.pushNamed(context, '/menu');
              },
              hoverColor: Colors.blue[50],
            ),
          ]),
        ),
      )),
      appBar: AppBar(
          backgroundColor: Colors.lightBlue[600],
          title: Text('Calendário / Mural de Recados')),
                body: Container(
        decoration: BoxDecoration(
              gradient: LinearGradient(
              colors: [Colors.blueGrey, Colors.lightBlueAccent, Colors.grey]),
            ),
        child: Center(
          child: Container(
              width: 350, height: 350, child: Image.asset('lib/imagem/PaiJoao.jpeg')),
        ),
      ),
    );
  }
}
