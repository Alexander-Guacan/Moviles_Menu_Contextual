import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

class PaginaPerfil extends StatefulWidget {
  const PaginaPerfil({Key? key}) : super(key: key);

  @override
  _PaginaPerfilState createState() => _PaginaPerfilState();
}

class _PaginaPerfilState extends State<PaginaPerfil> {
  final TextEditingController _controller = TextEditingController();
  int _number = 0;
  List<String> _results = [];

  void _generateTable() {
    setState(() {
      _number = int.tryParse(_controller.text) ?? 0;
      _results = List.generate(10, (i) => "${_number}x${i + 1}=${_number * (i + 1)}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tabla de multiplicar"),
        backgroundColor: Color.fromARGB(255, 38, 148, 192),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontFamily: 'CustomFont',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: "Ingrese un número",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: _generateTable,
                child: const Text("Generar Tabla"),
              ),
              const SizedBox(height: 20),
              if (_results.isNotEmpty)
                Container(
                  padding: const EdgeInsets.all(16.0),
                  margin: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 208, 219, 224),
                    border: Border.all(color: Colors.deepPurple, width: 2),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: _results.map((result) => Center(
                      child: Text(result, style: const TextStyle(fontSize: 18)),
                    )).toList(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}


/*
class PaginaPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Página de Perfil',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
*/