import 'package:flutter/material.dart';

import '../constants.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Container(
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
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const <Widget>[Text('ABCD'), Text('ABCD')],
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 40,
            bottom: 40,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network('https://via.placeholder.com/100x150'),
          ),
        )
      ],
    );
  }
}
