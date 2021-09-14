import 'package:flutter/material.dart';
import 'package:moovz/components/movie_card.dart';

class MovieList extends StatelessWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 5, itemBuilder: (context, index) => const MovieCard()),
    );
  }
}
