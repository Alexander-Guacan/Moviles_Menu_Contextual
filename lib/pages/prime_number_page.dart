import 'package:flutter/material.dart';

class PrimeNumberPage extends StatefulWidget {
  const PrimeNumberPage({super.key});

  @override
  State<PrimeNumberPage> createState() => _FactorialPageState();
}

class _FactorialPageState extends State<PrimeNumberPage> {
  final TextEditingController _number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [TextField(
          controller: _number,
          keyboardType: const TextInputType.numberWithOptions(signed: false, decimal: false),
          decoration: const InputDecoration(
            label: Text("Número primo")
          ),
        )],
      ),
    );
  }
}
