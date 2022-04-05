// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_practicing/pages/hello_page1.dart';
import 'package:flutter_practicing/pages/hello_page2.dart';
import 'package:flutter_practicing/pages/hello_page3.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: _appBar(),
      body: _body(context),
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

  _body(context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _title('Destaques'),
          _pageView(),
          _buttons(context),
        ],
      ),
    );
  }

  _pageView() {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
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

  _buttons(context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _button(context, 'List View',
                  () => _onClickNavigator(context, HelloPage1())),
              _button(context, 'Page 2',
                  () => _onClickNavigator(context, HelloPage2())),
              _button(context, 'Page 3',
                  () => _onClickNavigator(context, HelloPage3())),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _button(context, 'Snack', _onClickSnack),
              _button(context, 'Dialog', _onClickDialog),
              _button(context, 'Toast', _onClickToast),
            ],
          ),
        ],
      ),
    );
  }

  void _onClickNavigator(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return page;
      }),
    );
  }

  _onClickSnack() {}

  _onClickDialog() {}

  _onClickToast() {}

  _img(String img) {
    return Container(
      child: Image.asset(
        img,
      ),
    );
  }

  _button(BuildContext context, String text, onPressed) {
    return RaisedButton(
      color: Colors.green,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: onPressed,
    );
  }

  _title(String title) {
    return Container(
      padding: const EdgeInsets.all(7),
      color: Colors.green,
      child: Text(
        title,
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
