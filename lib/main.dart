import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'package:moovz/screens/details.dart';
import 'controllers/genre_provider.dart';
import 'screens/home.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  GenreProvider.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/details': (context) => const DetailsPage()
      },
      initialRoute: '/',
    );
  }
}
