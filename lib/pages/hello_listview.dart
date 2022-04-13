// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class HelloListView extends StatelessWidget {
  const HelloListView({Key? key}) : super(key: key);

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
      backgroundColor: Colors.blueGrey,
      title: Text(
        'List View',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _body() {
    return Container(
      child: ListView(
        children: [
          _img('assets/images/avengers.jpg'),
          _img('assets/images/1917.jpeg'),
          _img('assets/images/johnwick.jpg'),
          _img('assets/images/infiltrado.jpg'),
          _img('assets/images/acabana.jpg'),
          _img('assets/images/meninaroubava.jpg'),
        ],
      ),
    );
  }

  _img(String img) {
    return Container(
      child: Image.asset(
        img,
        fit: BoxFit.cover,
      ),
    );
  }
}
