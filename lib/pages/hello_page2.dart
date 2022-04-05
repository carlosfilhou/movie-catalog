// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HelloPage2 extends StatelessWidget {
  const HelloPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: _appBar(),
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

  _appBar() {
    return AppBar(
      backgroundColor: Colors.green,
      title: Text(
        'PAGE 2',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
