import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:moovz/models/genre.dart';

class GenreProvider {
  static final _completer = Completer<List<Genre>>();

  static init() {
    http
        .get(Uri.parse(
            "https://api.themoviedb.org/3/genre/movie/list?api_key=${dotenv.env['MOVIE_API_KEY']}"))
        .then((http.Response response) {
      if (response.statusCode == 200) {
        final List genres = json.decode(response.body)['genres'];
        _completer.complete(
            genres.map((genreJson) => Genre.fromJson(genreJson)).toList());
      }
    });
  }

  static Future<List<Genre>> get genres => _completer.future;
  static Future<List<String>> genreNamesFromId(List genreIds) async {
    final genres = await _completer.future;
    List<String> genreNames = [];
    for (final genreId in genreIds) {
      for (final genres in genres) {
        if (genres.id == genreId) {
          genreNames.add(genres.name);
        }
      }
    }
    return genreNames;
  }
}
