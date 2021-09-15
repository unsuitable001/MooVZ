import 'package:flutter/material.dart';
import 'package:moovz/components/movie_card.dart';
import 'package:moovz/controllers/movie_list_provider.dart';
import 'package:moovz/models/movie.dart';

class MovieList extends StatelessWidget {
  MovieList({Key? key}) : super(key: key) {
    MovieListProvider.init();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder<List<Movie>>(
          future: MovieListProvider.movies,
          builder: (context, snapshot) {
            return snapshot.hasData
                ? ListView.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) =>
                        MovieCard(movie: snapshot.data![index]))
                : const Center(child: CircularProgressIndicator());
          }),
    );
  }
}
