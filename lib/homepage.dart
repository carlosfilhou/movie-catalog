import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Aplicativo'),
      ),
      body: Container(
        color: Color.fromARGB(255, 92, 92, 92),
        child: Center(
          child: Text(
            'Hello World!',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
