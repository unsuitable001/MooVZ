import 'package:flutter/material.dart';
import 'package:moovz/components/app_bar.dart';
import 'package:moovz/components/navbar.dart';
import 'package:moovz/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: myAppBar(context),
      body: const NavBar(),
    );
  }
}
