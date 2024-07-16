import 'package:flutter/material.dart';
import 'package:moviles_menu_contextual/pages/factorial_page.dart';
import 'package:moviles_menu_contextual/pages/pagina_division.dart';
import 'package:moviles_menu_contextual/pages/parity_page.dart';
import 'package:moviles_menu_contextual/pages/prime_number_page.dart';

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

  static final List<Widget> _opcionesWidget = <Widget>[
    PaginaInicio(),
    PaginaBusqueda(),
    PaginaPerfil(),
    DivisionPage(),
    FactorialPage(),
    PrimePage(),
    ParityPage(),
  ];

  void _enItemTocado(int indice) {
    setState(() {
      _indiceSeleccionado = indice + 4;
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
              leading: const Icon(Icons.add),
              title: const Text('Suma'),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _indiceSeleccionado = 0;
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.remove),
              title: const Text('Resta'),
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
            ListTile(
              leading: const Icon(Icons.numbers),
              title: const Text('Division'),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _indiceSeleccionado = 3;
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
            label: 'Par/Impar',
          ),
        ],
        // currentIndex: _indiceSeleccionado % 4,
        selectedItemColor: Colors.amber[800],
        onTap: _enItemTocado,
      ),
    );
  }
}
