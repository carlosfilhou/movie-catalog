import 'package:flutter/material.dart';

import 'hello_listview.dart';

class FilmDetail extends StatelessWidget {

  late final Film film;

  FilmDetail(this.film);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(film.nome),
      ),
      body: Image.asset(film.foto),
    );
  }
}
