// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:movieapp/models/movie_model.dart';

class MoviesModel {
  late int page;
  late int totalResults;
  late int totalPages;
  late List<MovieModel> listMovies;
  MoviesModel({
    required this.page,
    required this.totalResults,
    required this.totalPages,
    required this.listMovies,
  });

  MoviesModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    totalResults = json['total_results'];
    totalPages = json['total_pages'];
    if (json['results'] != null) {
      listMovies = List<MovieModel>.empty(growable: true);
      json['results'].forEach((v) {
        listMovies.add(MovieModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = page;
    data['total_results'] = totalResults;
    data['total_pages'] = totalPages;
    if (listMovies != null) {
      data['results'] = listMovies.map((v) => v.toJson()).toList();
    }
    return data;
  }

  MoviesModel copyWith({
    int? page,
    int? totalResults,
    int? totalPages,
    List<MovieModel>? listMovies,
  }) {
    return MoviesModel(
      page: page ?? this.page,
      totalResults: totalResults ?? this.totalResults,
      totalPages: totalPages ?? this.totalPages,
      listMovies: listMovies ?? this.listMovies,
    );
  }

  @override
  String toString() {
    return 'MoviesModel(page: $page, totalResults: $totalResults, totalPages: $totalPages, listMovies: $listMovies)';
  }

  @override
  bool operator ==(covariant MoviesModel other) {
    if (identical(this, other)) return true;

    return other.page == page &&
        other.totalResults == totalResults &&
        other.totalPages == totalPages &&
        other.listMovies == listMovies;
  }

  @override
  int get hashCode {
    return page.hashCode ^
        totalResults.hashCode ^
        totalPages.hashCode ^
        listMovies.hashCode;
  }
}
