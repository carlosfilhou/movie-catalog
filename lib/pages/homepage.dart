import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('FILMES (teste)'),
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Color.fromARGB(255, 68, 68, 68),
      child: Center(
        child: _button(),
      ),
    );
  }

  _img() => Image.asset('assets/images/infiltrado.jpg');

  _button() {
    return RaisedButton(
      color: Colors.green,
      child: Text(
        'OK',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: () => _onClickOk(),
    );
  }

  void _onClickOk() => print('Clicou no botão de OK');

  _text() {
    return Text(
      'RECEEEEBAAA!',
      style: TextStyle(
        fontSize: 35,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
