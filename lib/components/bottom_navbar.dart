import 'package:flutter/material.dart';
import 'package:moovz/constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  IconData selected = Icons.home_outlined;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [kDefaultShadow]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icons.home_outlined,
          Icons.bookmark_outline_outlined,
          Icons.perm_identity_outlined
        ]
            .map((icon) => bottomButton(icon, () {
                  setState(() {
                    selected = icon;
                  });
                }))
            .toList(),
      ),
    );
  }

  Widget bottomButton(IconData icon, void Function()? onPressed) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: Container(
          margin: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding / 4, vertical: kDefaultPadding / 2),
          color: selected == icon ? kSecondaryColor : Colors.transparent,
          child: IconButton(
            icon: Icon(
              icon,
              color: selected == icon ? Colors.white : Colors.black,
            ),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
