// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class StyleGreyButton extends StatelessWidget {
  late String text;
  void Function() onPressed;

  StyleGreyButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blueGrey[700],
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
