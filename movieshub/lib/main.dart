import 'package:flutter/material.dart';
import 'package:movieshub/screens/home.dart';
import 'package:movieshub/screens/moviescreen.dart';
import 'package:movieshub/screens/seriesscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      initialRoute: HomeScreen.routename,
      routes: {
        HomeScreen.routename:(context)=>HomeScreen(),
        MoviesScreen.routename:(context)=>MoviesScreen(),
        SeriesScreen.routename:(context)=>SeriesScreen(),
      },
    );
  }
}