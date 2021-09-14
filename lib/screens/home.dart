import 'package:flutter/material.dart';
import 'package:moovz/components/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2F0F6),
      appBar: myAppBar(context),
      body: const Center(child: Text('Hello')),
    );
  }
}
