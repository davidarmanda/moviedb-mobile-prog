import 'package:flutter/material.dart';
import 'movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;
  final String imgPath = 'https://image.tmdb.org/t/p/w500/';
  const MovieDetail(this.movie, {super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    String path;
    // ignore: unnecessary_null_comparison
    if (movie.posterPath != null) {
      path = imgPath + movie.posterPath;
    } else {
      path =
          'https://images.freeimages.com/images/large-previews/5eb/movie-clapboard-1184339.jpg';
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(movie.title),
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(16),
                height: height / 1.5,
                child: Image.network(path)),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(movie.overview),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(movie.voteAverage.toString()),
                  ),
                  const Expanded(
                    child: Spacer(),
                  ),
                  Expanded(
                    child: Text(movie.releaseDate),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: Spacer(),
                  ),
                  Expanded(
                      child: Text("PROGRAM by DAVID ARMANDA, NIM: 20201354")),
                  Expanded(child: Spacer()),
                ],
              ),
            )
          ],
        ))));
  }
}
