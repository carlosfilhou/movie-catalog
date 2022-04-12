// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class HelloPage1 extends StatelessWidget {
  const HelloPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: _appBar(),
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: Colors.blueGrey,
      title: Text(
        'PAGE 1',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
