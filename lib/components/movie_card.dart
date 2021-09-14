import 'package:flutter/material.dart';

import '../constants.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        buildInfoCard(context),
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
                    Text('Movie Title',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(fontWeight: FontWeight.w600)),
                    Text('Movie Categories',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(color: kSecondaryFontColor)),
                    RichText(
                        text: TextSpan(children: [
                      const WidgetSpan(
                          child: Icon(
                        Icons.star,
                        color: Colors.amber,
                      )),
                      TextSpan(
                          text: '7.1',
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
}
