import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

AppBar pageAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: buttonBuilder(CupertinoIcons.back,
        onPressed: () => Navigator.of(context).pop()),
    actions: <Widget>[
      buttonBuilder(CupertinoIcons.bookmark,
          onPressed: () => print('bookmark')),
    ],
  );
}

Widget buttonBuilder(IconData icon, {required void Function()? onPressed}) {
  return Container(
    margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 2, vertical: kDefaultPadding / 2),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    child: IconButton(
      icon: Icon(icon),
      color: kIconSecondaryColor,
      onPressed: onPressed,
    ),
  );
}
