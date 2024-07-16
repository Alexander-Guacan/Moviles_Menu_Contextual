import 'package:flutter/material.dart';

class FactorialPage extends StatefulWidget {
  @override
  _FactorialPageState createState() => _FactorialPageState();
}

class _FactorialPageState extends State<FactorialPage> {
  final _numController = TextEditingController();
  String _result = '';

  void _calculateFactorial() {
    final int num = int.tryParse(_numController.text) ?? 0;
    int factorial = 1;
    for (int i = 1; i <= num; i++) {
      factorial *= i;
    }
    setState(() {
      _result = 'Factorial of $num is $factorial';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Factorial Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _numController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter a number',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateFactorial,
              child: Text('Calculate Factorial'),
            ),
            SizedBox(height: 20),
            Text(
              _result,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _numController.dispose();
    super.dispose();
  }
}
