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
      appBar: _appBar(),
      body: _body(context),
    );
  }

  _appBar() {
    return AppBar(
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
          _buttons(),
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
          _img('assets/images/django.jpeg'),
          _img('assets/images/1917.jpeg'),
          _img('assets/images/thebatman.jpeg'),
          _img('assets/images/vidasecretawalter.jpeg'),
          _img('assets/images/avengers.jpg'),
          _img('assets/images/gravidade.jpeg'),
        ],
      ),
    );
  }

  _buttons() {
    // ignore: avoid_unnecessary_containers
    return Builder(
      builder: (context) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
                StyleGreyButton('Snack', () => _onClickSnack(context)),
                StyleGreyButton('Dialog', () => _onClickDialog(context)),
                StyleGreyButton('Toast', _onClickToast),
              ],
            ),
          ],
        );
      },
    );
  }

  void _onClickNavigator(BuildContext context, Widget page) async {
    var s = await push(context, page);

    print('>> $s');
  }

  _onClickSnack(context) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.white,
        content: Text('Este é um aleta do tipo Snack'),
        action: SnackBarAction(
          textColor: Colors.black,
          label: 'OK',
          onPressed: () {
            print('OK!');
          },
        ),
      ),
    );
  }

  _onClickDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            title: Text('Este é um alerta do tipo Dialog'),
            actions: [
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.pop(context);
                  print('OK!!');
                },
              ),
            ],
          ),
        );
      },
    );
  }

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
      color: Colors.grey[700],
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
