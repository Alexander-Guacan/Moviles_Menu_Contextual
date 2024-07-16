import 'package:flutter/material.dart';

import 'pagina_busqueda.dart';
import 'pagina_inicio.dart';
import 'pagina_perfil.dart';

class PantallaPrincipal1 extends StatefulWidget {
  const PantallaPrincipal1({super.key});

  @override
  _EstadoPantallaPrincipal1 createState() => _EstadoPantallaPrincipal1();
}

class _EstadoPantallaPrincipal1 extends State<PantallaPrincipal1> {
  int _indiceSeleccionado = 0;

  static List<Widget> _opcionesWidget = <Widget>[
    PaginaInicio(),
    PaginaBusqueda(),
    PaginaPerfil(),
  ];

  void _enItemTocado(int indice) {
    setState(() {
      _indiceSeleccionado = indice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navegación con Drawer y Bottom Navigation'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Encabezado del Drawer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _indiceSeleccionado = 0;
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Buscar'),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _indiceSeleccionado = 1;
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.close),
              title: const Text('Multiplicacion'),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _indiceSeleccionado = 2;
                });
              },
            ),
          ],
        ),
      ),
      body: _opcionesWidget.elementAt(_indiceSeleccionado),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        currentIndex: _indiceSeleccionado,
        selectedItemColor: Colors.amber[800],
        onTap: _enItemTocado,
      ),
    );
  }
}