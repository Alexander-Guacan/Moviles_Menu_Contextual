import 'package:flutter/material.dart';

class FactorialPage extends StatefulWidget {
  const FactorialPage({super.key});

  @override
  State<FactorialPage> createState() => _FactorialPageState();
}

class _FactorialPageState extends State<FactorialPage> {
  final TextEditingController _number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [TextField(
          controller: _number,
          keyboardType: const TextInputType.numberWithOptions(signed: false, decimal: false),
          decoration: const InputDecoration(
            label: Text("Número")
          ),
        )],
      ),
    );
  }
}
