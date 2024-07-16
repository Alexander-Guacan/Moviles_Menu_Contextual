import 'package:flutter/material.dart';

class PaginaSuma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Controladores para los campos de texto
    final TextEditingController numero1Controller = TextEditingController();
    final TextEditingController numero2Controller = TextEditingController();
    final TextEditingController resultadoController = TextEditingController();

    // Función para realizar la suma
    void sumar() {
      // Convertir el texto ingresado a números enteros
      int num1 = int.tryParse(numero1Controller.text) ?? 0;
      int num2 = int.tryParse(numero2Controller.text) ?? 0;
      // Calcular la suma
      int suma = num1 + num2;
      // Actualizar el campo de texto del resultado 
      resultadoController.text = suma.toString();
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Título de la página
              const Text(
                'OPERACION DE SUMA',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),

              const SizedBox(height: 20), 

              // Campo de texto para ingresar el primer número
              TextField(
                controller: numero1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Ingrese número 1',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),

              const SizedBox(height: 20), 

              // Campo de texto para ingresar el segundo número
              TextField(
                controller: numero2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Ingrese número 2',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),

              const SizedBox(height: 20), 

              // Botón para realizar la suma
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextButton(
                  onPressed: () {
                    // Llamar a la función sumar al presionar el botón
                    sumar();
                  },
                  child: const Text(
                    "Sumar",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20), 

              // Campo de texto para mostrar el resultado de la suma
              TextField(
                controller: resultadoController,
                readOnly: true, // Para evitar la edición manual del resultado
                decoration: InputDecoration(
                  labelText: 'Resultado',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.grey.shade400),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
