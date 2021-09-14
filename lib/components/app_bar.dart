import 'package:flutter/material.dart';

import '../constants.dart';

// TODO: Change margin, padding & font

AppBar myAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: kBackgroundColor,
    elevation: 0,
    centerTitle: true,
    title: RichText(
        text: TextSpan(children: <InlineSpan>[
      const WidgetSpan(
        child: Icon(
          Icons.location_on,
          color: kIconSecondaryColor,
        ),
      ),
      TextSpan(text: 'TO, Canada', style: TextStyle(color: kSecondaryFontColor))
    ])),
    leading: IconButton(
      icon: const Icon(Icons.menu),
      padding: const EdgeInsets.only(left: kDefaultPadding),
      color: kIconColor,
      onPressed: () => print('menu'),
    ),
    actions: <Widget>[
      IconButton(
          icon: const Icon(Icons.search),
          padding: const EdgeInsets.only(right: kDefaultPadding),
          color: kIconSecondaryColor,
          onPressed: () => print('menu'))
    ],
  );
}
