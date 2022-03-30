import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: _appBar(),
      body: _body(),
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: Colors.green,
      title: Text(
        'FILMES',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _body() {
    return Container(
      color: Colors.grey[850],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _title(),
          _pageView(),
          _buttons(),
        ],
      ),
    );
  }

  _pageView() {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 15),
      height: 400,
      child: PageView(
        children: [
          _img('assets/images/avengers.jpg'),
          _img('assets/images/1917.jpeg'),
          _img('assets/images/meninaroubava.jpg'),
        ],
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

  _img(String img) {
    return Container(
      child: Image.asset(
        img,
      ),
    );
  }

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

  _title() {
    return Container(
      padding: const EdgeInsets.all(7),
      color: Colors.green,
      child: Text(
        'Destaques',
        style: TextStyle(
          fontSize: 21,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
