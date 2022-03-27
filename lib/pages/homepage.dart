import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Aplicativo'),
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Color.fromARGB(255, 68, 68, 68),
      child: Center(
        child: _text(),
      ),
    );
  }

  _text() {
    return Text(
      'Hello World!',
      style: TextStyle(
        fontSize: 35,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
