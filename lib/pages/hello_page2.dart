// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HelloPage2 extends StatelessWidget {
  const HelloPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return Center(
      child: RaisedButton(
        color: Colors.green,
        child: Text(
          'Voltar',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
