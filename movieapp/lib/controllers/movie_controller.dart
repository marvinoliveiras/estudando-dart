import 'package:flutter/cupertino.dart';
import 'package:movieapp/models/movie_model.dart';
import 'package:movieapp/models/movies_model.dart';
import 'package:movieapp/repositories/movies_repository.dart';

class MovieController {
  final MoviesRepository _moviesRepository;
  MovieController(this._moviesRepository) {
    fetch();
  }
  ValueNotifier<MoviesModel?> movies = ValueNotifier<MoviesModel?>(null);
  onChanged(String value) {
    List<MovieModel> list = _cachedMovies!.listMovies
        .where((e) => e.toString().toLowerCase().contains(value.toLowerCase()))
        .toList();
    movies.value = movies.value!.copyWith(listMovies: list);
  }

  MoviesModel? _cachedMovies;
  fetch() async {
    movies.value = await _moviesRepository.getMovies();
    _cachedMovies = movies.value;
  }
}
