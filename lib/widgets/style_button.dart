// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class StyleGreyButton extends StatelessWidget {
  late String text;
  void Function() onPressed;

  StyleGreyButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.teal,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
