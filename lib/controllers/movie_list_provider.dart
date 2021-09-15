import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:moovz/models/movie.dart';

class MovieListProvider {
  static final _completer = Completer<List<Movie>>();

  static init() {
    http
        .get(Uri.parse(
            "https://api.themoviedb.org/3/discover/movie?api_key=${dotenv.env['MOVIE_API_KEY']}"))
        .then((http.Response response) {
      if (response.statusCode == 200) {
        final List movieList = json.decode(response.body)['results'];
        _completer.complete(movieList
            .map((movieListJson) => Movie.fromJson(movieListJson))
            .toList());
      }
    });
  }

  static Future<List<Movie>> get movies => _completer.future;
}
