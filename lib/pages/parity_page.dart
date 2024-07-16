import 'package:flutter/material.dart';

class ParityPage extends StatefulWidget {
  @override
  _ParityPageState createState() => _ParityPageState();
}

class _ParityPageState extends State<ParityPage> {
  final _numController = TextEditingController();
  String _result = '';

  void _checkParity() {
    final int num = int.tryParse(_numController.text) ?? 0;
    if (num % 2 == 0) {
      setState(() {
        _result = 'El numero $num es par';
      });
    } else {
      setState(() {
        _result = 'El numero $num es impar';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parity Checker'),
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
              onPressed: _checkParity,
              child: Text('Check Parity'),
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
