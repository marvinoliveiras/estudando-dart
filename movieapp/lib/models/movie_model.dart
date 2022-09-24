// ignore_for_file: public_member_api_docs, sort_constructors_first
class MovieModel {
  late double popularity;
  late int voteCount;
  late bool video;
  late String posterPath;
  late int id;
  late bool adult;
  late String backdropPath;
  late String originalLanguage;
  late String originalTitle;
  late List<int> genreIds;
  late String title;
  late dynamic voteAverage;
  late String overview;
  late String releaseDate;
  MovieModel({
    required this.popularity,
    required this.voteCount,
    required this.video,
    required this.posterPath,
    required this.id,
    required this.adult,
    required this.backdropPath,
    required this.originalLanguage,
    required this.originalTitle,
    required this.genreIds,
    required this.title,
    required this.voteAverage,
    required this.overview,
    required this.releaseDate,
  });

  MovieModel.fromJson(Map<String, dynamic> json) {
    popularity = json['popularity'];
    voteCount = json['vote_count'];
    video = json['video'];
    posterPath = json['poster_path'];
    id = json['id'];
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    genreIds = json['genre_ids'].cast<int>();
    title = json['title'];
    voteAverage = json['vote_average'];
    overview = json['overview'];
    releaseDate = json['release_date'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map();
    data['popularity'] = popularity;
    data['vote_count'] = voteCount;
    data['video'] = video;
    data['poster_path'] = posterPath;
    data['id'] = id;
    data['adult'] = adult;
    data['backdrop_path'] = backdropPath;
    data['original_language'] = originalLanguage;
    data['original_title'] = originalTitle;
    data['genre_ids'] = genreIds;
    data['title'] = title;
    data['vote_average'] = voteAverage;
    data['overview'] = overview;
    data['release_date'] = releaseDate;
    return data;
  }

  MovieModel copyWith({
    double? popularity,
    int? voteCount,
    bool? video,
    String? posterPath,
    int? id,
    bool? adult,
    String? backdropPath,
    String? originalLanguage,
    String? originalTitle,
    List<int>? genreIds,
    String? title,
    dynamic? voteAverage,
    String? overview,
    String? releaseDate,
  }) {
    return MovieModel(
      popularity: popularity ?? this.popularity,
      voteCount: voteCount ?? this.voteCount,
      video: video ?? this.video,
      posterPath: posterPath ?? this.posterPath,
      id: id ?? this.id,
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      genreIds: genreIds ?? this.genreIds,
      title: title ?? this.title,
      voteAverage: voteAverage ?? this.voteAverage,
      overview: overview ?? this.overview,
      releaseDate: releaseDate ?? this.releaseDate,
    );
  }

  @override
  bool operator ==(covariant MovieModel other) {
    if (identical(this, other)) return true;

    return other.popularity == popularity &&
        other.voteCount == voteCount &&
        other.video == video &&
        other.posterPath == posterPath &&
        other.id == id &&
        other.adult == adult &&
        other.backdropPath == backdropPath &&
        other.originalLanguage == originalLanguage &&
        other.originalTitle == originalTitle &&
        other.genreIds == genreIds &&
        other.title == title &&
        other.voteAverage == voteAverage &&
        other.overview == overview &&
        other.releaseDate == releaseDate;
  }

  @override
  int get hashCode {
    return popularity.hashCode ^
        voteCount.hashCode ^
        video.hashCode ^
        posterPath.hashCode ^
        id.hashCode ^
        adult.hashCode ^
        backdropPath.hashCode ^
        originalLanguage.hashCode ^
        originalTitle.hashCode ^
        genreIds.hashCode ^
        title.hashCode ^
        voteAverage.hashCode ^
        overview.hashCode ^
        releaseDate.hashCode;
  }

  @override
  String toString() {
    return 'MovieModel(popularity: $popularity, voteCount: $voteCount, video: $video, posterPath: $posterPath, id: $id, adult: $adult, backdropPath: $backdropPath, originalLanguage: $originalLanguage, originalTitle: $originalTitle, genreIds: $genreIds, title: $title, voteAverage: $voteAverage, overview: $overview, releaseDate: $releaseDate)';
  }
}
