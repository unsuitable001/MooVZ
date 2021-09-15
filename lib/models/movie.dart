import 'package:moovz/controllers/genre_provider.dart';

import 'genre.dart';

class Movie {
  final int id;
  final String name;
  final String rating;
  final String poster;
  List genreIds;

  Movie(
      {required this.id,
      required this.name,
      required this.rating,
      required this.poster,
      required this.genreIds});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        id: json['id'],
        name: json['title'],
        rating: json['vote_average'].toString(),
        poster: json['poster_path'],
        genreIds: json['genre_ids']);
  }
}
