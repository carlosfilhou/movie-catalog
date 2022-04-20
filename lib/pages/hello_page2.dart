// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_practicing/widgets/style_button.dart';

class HelloPage2 extends StatelessWidget {
  const HelloPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(context),
      floatingActionButton: _fab(),
    );
  }

  _fab() {
    return FloatingActionButton(
      backgroundColor: Colors.teal,
      child: Icon(Icons.favorite),
      onPressed: () {
        _onClickFab();
      },
    );
  }

  _onClickFab() {
    print('Você clicou no FAB!!');
  }

  _body(context) {
    return Center(
      child: StyleGreyButton(
        'Voltar',
        () => _onClickVoltar(context),
      ),
    );
  }

  _onClickVoltar(context) {
    Navigator.pop(context, "tela 2");
  }

  _appBar() {
    return AppBar(
      title: Text(
        'Page 2',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
