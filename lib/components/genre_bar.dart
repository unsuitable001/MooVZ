import 'package:flutter/material.dart';

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
      height: 42,
      margin: const EdgeInsets.only(bottom: kDefaultPadding),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: navBarList.length,
        itemBuilder: (context, index) => genreItemBuilder(context, index),
      ),
    );
  }

  genreItemBuilder(BuildContext context, int index) {
    return GestureDetector(
      child: GenreCard(genre: 'Horror', isSelected: selectedCategory == index),
      onTap: () {
        setState(() {
          selectedCategory = index;
        });
      },
    );
  }
}
