import 'package:flutter/material.dart';

class PrimePage extends StatefulWidget {
  @override
  _PrimePageState createState() => _PrimePageState();
}

class _PrimePageState extends State<PrimePage> {
  final _numController = TextEditingController();
  String _result = '';

  void _checkPrime() {
    final int num = int.tryParse(_numController.text) ?? 0;
    if (num <= 1) {
      setState(() {
        _result = '$num is not a prime number';
        return;
      });
    }
    for (int i = 2; i <= num ~/ 2; i++) {
      if (num % i == 0) {
        setState(() {
          _result = '$num is not a prime number';
          return;
        });
      }
    }
    setState(() {
      _result = '$num is a prime number';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prime Checker'),
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
              onPressed: _checkPrime,
              child: Text('Check Prime'),
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
