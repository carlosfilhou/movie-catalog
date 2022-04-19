// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_practicing/widgets/style_button.dart';

class HelloPage3 extends StatelessWidget {
  const HelloPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(context),
    );
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
    Navigator.pop(context, "tela 3");
  }

  _appBar() {
    return AppBar(
      title: Text(
        'Page 3',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
