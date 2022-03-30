import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 114, 113, 113),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('FILMES'),
      ),
      body: _body(),
    );
  }

  _body() {
    return Center(
      child: Container(
        color: Color.fromARGB(255, 114, 113, 113),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_text(), _img(), _buttons()],
        ),
      ),
    );
  }

  _buttons() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _button('List View'),
            _button('Page 2'),
            _button('Page 3'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _button('Snack'),
            _button('Dialog'),
            _button('Toast'),
          ],
        ),
      ],
    );
  }

  _img() => Image.asset('assets/images/infiltrado.jpg');

  _button(String text) {
    return RaisedButton(
      color: Colors.green,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: _onClickOk,
    );
  }

  void _onClickOk() => print('Clicou no botão de OK');

  _text() {
    return Text(
      'Destaque',
      style: TextStyle(
        fontSize: 35,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
