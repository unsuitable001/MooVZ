import 'package:flutter/material.dart';

import '../constants.dart';

// TODO: Change margin, padding & font

AppBar myAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: kBackgroundColor,
    elevation: 0,
    centerTitle: true,
    title: RichText(
        text: const TextSpan(children: <InlineSpan>[
      WidgetSpan(
        child: Icon(
          Icons.location_on,
          color: kIconSecondaryColor,
        ),
      ),
      TextSpan(text: 'TO, Canada', style: TextStyle(color: kFontColor))
    ])),
    leading: IconButton(
      icon: const Icon(Icons.menu),
      color: kIconColor,
      onPressed: () => print('menu'),
    ),
    actions: <Widget>[
      IconButton(
          icon: const Icon(Icons.search),
          color: kIconSecondaryColor,
          onPressed: () => print('menu'))
    ],
  );
}
