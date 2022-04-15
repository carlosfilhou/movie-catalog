// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Film {
  String nome;
  String foto;

  Film(this.nome, this.foto);
}

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
    List<Film> films = [
      Film('Avengers', 'assets/images/avengers.jpg'),
      Film('A Cabana', 'assets/images/acabana.jpg'),
      Film('O Infiltrado', 'assets/images/infiltrado.jpg'),
      Film('John Wick', 'assets/images/johnwick.jpg'),
      Film('A Menina que Roubava Livros', 'assets/images/meninaroubava.jpg')
    ];

    return ListView.builder(
      itemCount: films.length,
      itemExtent: 500,
      itemBuilder: (BuildContext context, int index) {
        Film film = films[index];

        return Stack(
          fit: StackFit.expand,
          children: <Widget>[
            _img(film.foto),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  film.nome,
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
  }
}
