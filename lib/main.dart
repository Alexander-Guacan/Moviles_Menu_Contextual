import 'package:flutter/material.dart';

import 'pages/pantalla_principal1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegación con Drawer y Bottom Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Cambia este color según prefieras
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue, // Color base del AppBar
        ),
      ),
      home: PantallaPrincipal1(),
    );
  }
}