import 'package:flutter/material.dart';

class DivisionPage extends StatefulWidget {
  const DivisionPage({super.key});

  @override
  _DivisionPageState createState() => _DivisionPageState();
}

class _DivisionPageState extends State<DivisionPage> {
  final _num1Controller = TextEditingController();
  final _num2Controller = TextEditingController();
  String _result = '';

  void _divide() {
    final double num1 = double.tryParse(_num1Controller.text) ?? 0;
    final double num2 = double.tryParse(_num2Controller.text) ?? 1; // Avoid division by zero
    if (num2 == 0) {
      setState(() {
        _result = 'Cannot divide by zero';
      });
    } else {
      final double result = num1 / num2;
      setState(() {
        _result = 'Result: $result';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Division Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _num1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Number 1',
              ),
            ),
            TextField(
              controller: _num2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Number 2',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _divide,
              child: const Text('Divide'),
            ),
            const SizedBox(height: 20),
            Text(
              _result,
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _num1Controller.dispose();
    _num2Controller.dispose();
    super.dispose();
  }
}
