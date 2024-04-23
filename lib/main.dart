import 'package:flutter/material.dart';
import 'package:proyecto/INTERFAZ/PROGRAM.dart';
import 'package:proyecto/INTERFAZ/grid.dart';

void main(List<String> args) {
  runApp(fragozo());
}

class fragozo extends StatelessWidget {
  const fragozo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: inicio(),
    );
  }
}

class inicio extends StatefulWidget {
  const inicio({super.key});

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VITRINA VIRTUAL'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: UserAccountsDrawerHeader(
                    accountName: Text('VITRINA VIRTUAL'),
                    accountEmail: Text('vitrinavirtual@shoppimh.com'))),
            ListTile(
              title: Text('INICIO'),
              leading: Icon(Icons.home),
            ),
            Divider(),
            ListTile(
              title: Text('MENU'),
              leading: Icon(Icons.menu),
            ),
            Divider(),
            ListTile(
              title: Text('COMPRAR'),
              leading: Icon(Icons.shopping_cart),
            ),
            Divider(),
            ListTile(
              title: Text('SALIR'),
              leading: Icon(Icons.login),
            ),
            Divider(),
            ListTile(
              title: Text('DESARROLLADOR'),
              leading: Icon(Icons.person_3),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => programa(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('GRIDVIEW'),
              leading: Icon(Icons.grid_3x3),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => grid(),
                  ),
                );
              },
            ),
            Divider()
          ],
        ),
      ),
      body: Column(
        children: [
          CircleAvatar(
            radius: 120,
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYQn1JRG3tvZnIxU2BlMKtMeOCWAhmtJdmEQoivvpdnA&s'),
          ),
          Text('TIENDA VIRTUAL')
        ],
      ),
    );
  }
}
