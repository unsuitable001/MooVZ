import 'package:flutter/material.dart';
import 'package:moovz/components/app_bar.dart';
import 'package:moovz/components/genre_bar.dart';
import 'package:moovz/components/movie_list.dart';
import 'package:moovz/components/navbar.dart';
import 'package:moovz/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: myAppBar(context),
      body: Container(
        margin: const EdgeInsets.only(
            top: kDefaultPadding * 3 / 2, bottom: kDefaultPadding / 3),
        padding: const EdgeInsets.only(left: kDefaultPadding / 2),
        child: Column(
          children: const <Widget>[NavBar(), GenreBar(), MovieList()],
        ),
      ),
    );
  }
}
