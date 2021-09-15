import 'package:flutter/material.dart';
import 'package:moovz/controllers/genre_provider.dart';
import 'package:moovz/models/movie.dart';

import '../constants.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/details'),
      child: Stack(
        children: <Widget>[
          buildInfoCard(context),
          Container(
            margin: const EdgeInsets.only(
              left: 40,
              bottom: 40,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://image.tmdb.org/t/p/w500/${movie.poster}',
                fit: BoxFit.contain,
                height: 150,
                width: 100,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Widget holding the textual information.
  Widget buildInfoCard(BuildContext context) {
    return Positioned.fill(
      child: Container(
        margin: const EdgeInsets.only(right: kDefaultPadding * 3 / 2),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Align(
          alignment: Alignment.centerRight,
          child: FractionallySizedBox(
            widthFactor: 1,
            heightFactor: 0.7,
            child: Container(
              margin: const EdgeInsets.only(
                left: kDefaultPadding,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
                vertical: kDefaultPadding,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const <BoxShadow>[kDefaultShadow]),
              child: Padding(
                padding: const EdgeInsets.only(left: 120),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(movie.name,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(fontWeight: FontWeight.w600)),
                    FutureBuilder<List<String>>(
                        future: GenreProvider.genreNamesFromId(movie.genreIds),
                        builder: (context, snapshot) {
                          return snapshot.hasData
                              ? Text(categoryStr(snapshot.data!),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      ?.copyWith(color: kSecondaryFontColor))
                              : Text('Movie Categories',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      ?.copyWith(color: kSecondaryFontColor));
                        }),
                    RichText(
                        text: TextSpan(children: [
                      const WidgetSpan(
                          child: Icon(
                        Icons.star,
                        color: Colors.amber,
                      )),
                      TextSpan(
                          text: movie.rating,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(color: kTextLightColor)),
                    ])),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  String categoryStr(List<String> genres) {
    final catStr = genres.toString().replaceAll(',', ' |');
    return catStr.substring(1, catStr.length - 1);
  }
}
