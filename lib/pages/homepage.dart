// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_practicing/pages/hello_listview.dart';
import 'package:flutter_practicing/pages/hello_page2.dart';
import 'package:flutter_practicing/pages/hello_page3.dart';
import 'package:flutter_practicing/widgets/style_button.dart';

import '../utils/nav.dart';

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
      backgroundColor: Colors.blueGrey,
      title: Text(
        'Catálogo de Filmes',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _body(context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _title('Principais'),
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
          _img('assets/images/acabana.jpg'),
          _img('assets/images/1917.jpeg'),
          _img('assets/images/johnwick.jpg'),
          _img('assets/images/infiltrado.jpg'),
          _img('assets/images/avengers.jpg'),
          _img('assets/images/meninaroubava.jpg'),
        ],
      ),
    );
  }

  _buttons(context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              StyleGreyButton('List View',
                  () => _onClickNavigator(context, ListGridView())),
              StyleGreyButton(
                  'Page 2', () => _onClickNavigator(context, HelloPage2())),
              StyleGreyButton(
                  'Page 3', () => _onClickNavigator(context, HelloPage3())),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              StyleGreyButton('Snack', _onClickSnack),
              StyleGreyButton('Dialog', _onClickDialog),
              StyleGreyButton('Toast', _onClickToast),
            ],
          ),
        ],
      ),
    );
  }

  

  void _onClickNavigator(BuildContext context, Widget page) async {
    String s = await push(context, page);

    print('>> $s');
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

  _button(BuildContext context, String text, Function onPressed) {
    return StyleGreyButton(text, () => onPressed);
  }

  _title(String title) {
    return Container(
      padding: const EdgeInsets.all(7),
      color: Colors.blueGrey,
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
