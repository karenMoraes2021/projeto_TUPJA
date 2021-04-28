//
// ListView.separeted
//
import 'package:flutter/material.dart';

class ListViewSepareted extends StatefulWidget {
  @override
  _ListViewSeparetedState createState() => _ListViewSeparetedState();
}

class _ListViewSeparetedState extends State<ListViewSepareted> {
  //lista dinâmica simplesmente encadeada
  var lista = [];

  var txtTarefa = TextEditingController();
  var txtDialogo = TextEditingController();

  @override
  void initState() {
    lista.add('Vela Vermelha');
    lista.add('Cigarro Palha');
    lista.add('Cigarro Vermelho');
    lista.add('Charuto');
    lista.add('Vela Azul');
    lista.add('Vela Amarela');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Estoque')),
        backgroundColor: Colors.blue[50],
      ),
      backgroundColor: Colors.grey[100],
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: txtTarefa,
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(
                      labelText: 'Adicionar Ítem',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add, color: Colors.grey[600]),
                  onPressed: () {
                    setState(() {
                      if (txtTarefa.text.isNotEmpty) {
                        lista.add(txtTarefa.text);
                        txtTarefa.clear();
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Ítem adicionado com sucesso!'),
                          duration: Duration(seconds: 2),
                        ));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Você precisa adicionar um ítem.'),
                          duration: Duration(seconds: 2),
                        ));
                      }
                    });
                  },
                )
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                //Aparência do item da lista
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      lista[index],
                      style: TextStyle(fontSize: 18),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          lista.removeAt(index);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Ítem removido com sucesso.'),
                            duration: Duration(seconds: 2),
                          ));
                        });
                      },
                    ),
                  );
                },

                //Aparência do divisor
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.blue[100],
                    thickness: 1,
                  );
                },

                //total de itens da lista
                itemCount: lista.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        onPressed: () async {
          await showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Adicionar ítem'),
                  content: TextField(
                    controller: txtDialogo,
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(),
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            if (txtDialogo.text.isNotEmpty) {
                              lista.add(txtDialogo.text);
                              txtDialogo.clear();

                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text('Ítem adicionado com sucesso!'),
                                duration: Duration(seconds: 2),
                              ));
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content:
                                    Text('Você precisa adicionar um ítem.'),
                                duration: Duration(seconds: 2),
                              ));
                            }
                          });
                          Navigator.pop(context);
                        },
                        child: Text('ok')),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('cancelar'))
                  ],
                );
              });
        },
      ),
    );
  }
}
