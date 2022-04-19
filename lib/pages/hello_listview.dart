// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_practicing/pages/film_detail.dart';
import 'package:flutter_practicing/utils/nav.dart';

class Film {
  String nome;
  String foto;

  Film(this.nome, this.foto);
}

class ListGridView extends StatefulWidget {
  @override
  State<ListGridView> createState() => _ListGridViewState();
}

class _ListGridViewState extends State<ListGridView> {
  bool _gridView = true;

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
      actions: [
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {
            print('Lista');
            setState(() {
              _gridView = false;
            });
          },
        ),
        IconButton(
          icon: Icon(Icons.grid_on),
          onPressed: () {
            print('Grade');
            setState(() {
              _gridView = true;
            });
          },
        )
      ],
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
      Film('A Menina que Roubava Livros', 'assets/images/meninaroubava.jpg'),
      Film('Avengers', 'assets/images/avengers.jpg'),
      Film('A Cabana', 'assets/images/acabana.jpg'),
      Film('O Infiltrado', 'assets/images/infiltrado.jpg'),
      Film('John Wick', 'assets/images/johnwick.jpg'),
      Film('A Menina que Roubava Livros', 'assets/images/meninaroubava.jpg')
    ];

    if (_gridView) {
      return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: films.length,
        itemBuilder: (BuildContext context, int index) {
          return _card(films, index);
        },
      );
    } else {
      return ListView.builder(
        itemExtent: 500,
        itemCount: films.length,
        itemBuilder: (BuildContext context, int index) {
          return _card(films, index);
        },
      );
    }
  }

  _card(List<Film> films, int index) {
    Film film = films[index];

    return GestureDetector(
      onTap: () {
        push(context, FilmDetail(film));
      },
      child: Stack(
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
      ),
    );
  }

  _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
  }
}
