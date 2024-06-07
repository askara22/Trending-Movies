import 'package:flutter/material.dart';
import 'package:trending_movies/pages/main_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trending Movies',
      theme: ThemeData(),
      home: const MainPage(
        title: 'Trending Movies',
      ),
    );
  }
}
