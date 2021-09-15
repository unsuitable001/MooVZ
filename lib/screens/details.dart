import 'package:flutter/material.dart';
import 'package:moovz/components/details_box.dart';
import 'package:moovz/components/page_appbar.dart';
import 'package:moovz/constants.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://image.tmdb.org/t/p/w500/vs63P2xYUGn3QmQ4JnkX1MY4BrO.jpg',
          height: MediaQuery.of(context).size.height / 2.7,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: pageAppBar(context),
          body: Container(
            margin: const EdgeInsets.only(top: kDefaultPadding * 7),
            child: Center(
              child: Column(
                children: <Widget>[DetailsBox()],
              ),
            ),
          ),
        )
      ],
    );
  }
}
