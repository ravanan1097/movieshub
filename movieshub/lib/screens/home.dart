import 'package:flutter/material.dart';
import 'package:movieshub/extras/bottomfoot.dart';
import 'package:movieshub/screens/moviescreen.dart';
import 'package:movieshub/screens/seriesscreen.dart';

class HomeScreen extends StatelessWidget {
  static const routename = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies Hub'),
      ),
      body: Column(
        children: [
          Container(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, MoviesScreen.routename),
                    color: Colors.blue,
                    child:
                        Text('Movies', style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(height: 7.0),
                  RaisedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, SeriesScreen.routename),
                    color: Colors.blue,
                    child: Text(
                      'Series',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
