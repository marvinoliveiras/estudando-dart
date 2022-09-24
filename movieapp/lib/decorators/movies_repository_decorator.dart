import 'dart:convert';

import 'package:movieapp/models/movies_model.dart';
import 'package:movieapp/repositories/movies_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MoviesRepositoryDecorator implements MoviesRepository {
  final MoviesRepository _moviesRepository;
  MoviesRepositoryDecorator(this._moviesRepository);
  Future<MoviesModel> getMovies() async {
    return await _moviesRepository.getMovies();
  }
}
