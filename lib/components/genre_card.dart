import 'package:flutter/material.dart';

import '../constants.dart';

class GenreCard extends StatelessWidget {
  final String genre;
  final bool isSelected;

  const GenreCard({Key? key, required this.genre, required this.isSelected})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin:
          const EdgeInsets.only(left: kDefaultPadding, bottom: kDefaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 4,
      ),
      decoration: BoxDecoration(
          color: isSelected ? kSecondaryColor : Colors.white,
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const <BoxShadow>[kDefaultShadow]),
      child: Text(
        genre,
        style: TextStyle(
            color: isSelected ? Colors.white : kTextColor.withOpacity(0.8),
            fontSize: 16),
      ),
    );
  }
}
