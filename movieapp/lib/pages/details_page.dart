import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/models/movie_model.dart';
import 'package:movieapp/utils/apis.utils.dart';

class DetailsPage extends StatelessWidget {
  final MovieModel movie;
  const DetailsPage({Key? key, required MovieModel this.movie})
      : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(movie.title),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .55,
                  width: MediaQuery.of(context).size.width,
                  child: Hero(
                      tag: movie.id,
                      child: Image.network(API.REQUEST_IMG(movie.posterPath))),
                ),
                const SizedBox(height: 20),
                Text(
                  movie.overview,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.title_outlined),
                    Text(movie.originalTitle),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.new_releases),
                    Text(movie.releaseDate),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
