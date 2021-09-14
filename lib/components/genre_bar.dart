import 'package:flutter/material.dart';
import 'package:moovz/controllers/genre_provider.dart';
import 'package:moovz/models/genre.dart';

import '../constants.dart';
import 'genre_card.dart';

class GenreBar extends StatefulWidget {
  const GenreBar({Key? key}) : super(key: key);

  @override
  _GenreBarState createState() => _GenreBarState();
}

class _GenreBarState extends State<GenreBar> {
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(bottom: kDefaultPadding),
      child: FutureBuilder(
          future: GenreProvider.genres,
          builder: (builder, AsyncSnapshot<List<Genre>> snapshot) {
            return snapshot.hasData
                ? ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) =>
                        genreItemBuilder(context, index, snapshot.data![index]),
                  )
                : Container();
          }),
    );
  }

  genreItemBuilder(BuildContext context, int index, Genre genre) {
    return GestureDetector(
      child:
          GenreCard(genre: genre.name, isSelected: selectedCategory == index),
      onTap: () {
        setState(() {
          selectedCategory = index;
        });
      },
    );
  }
}
