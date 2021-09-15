import 'package:flutter/material.dart';
import 'package:moovz/components/buy_button.dart';
import 'package:moovz/models/movie.dart';

import '../constants.dart';

class DetailsBox extends StatelessWidget {
  final Movie movie = Movie(
      id: 1,
      name: 'Finding Nemo',
      rating: '5',
      poster: '/',
      genreIds: [1, 2, 3]);
  DetailsBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      alignment: Alignment.topLeft,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: kDefaultPadding * 3),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
          ),
          Positioned(
            left: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    'https://image.tmdb.org/t/p/w500/CGJAj5kNWQZypNgUSTTQrFlnG.jpg',
                    width: 130,
                    height: 200,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: kDefaultPadding * 3, left: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(movie.name,
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  height: 1)),
                      Text('Director: ABCD',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                  color: kSecondaryFontColor, height: 2)),
                      Text('Runtime: 1hr',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                  color: kSecondaryFontColor, height: 2)),
                      RichText(
                          text: TextSpan(
                              style: const TextStyle(height: 2),
                              children: [
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
                          ]))
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: kDefaultPadding * 12),
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
            decoration: const BoxDecoration(color: Colors.transparent),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Plot Summary',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        height: 3)),
                const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries."),
                // Crew & Cast heading.
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: kDefaultPadding,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Crew & Cast',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700)),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'View all',
                            style: TextStyle(
                              color: kIconSecondaryColor,
                            ),
                          ))
                    ],
                  ),
                ),
                const BuyButton()
              ],
            ),
          )
        ],
      ),
    ));
  }

  String categoryStr(List<String> genres) {
    final catStr = genres.toString().replaceAll(',', ' |');
    return catStr.substring(1, catStr.length - 1);
  }
}
