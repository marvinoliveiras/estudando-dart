import 'package:flutter_dotenv/flutter_dotenv.dart';

class API {
  static String REQUEST_IMG(String img) =>
      'https://image.tmdb.org/t/p/w500/$img';
  static const REQUEST_MOVIE_LIST = 'list/1?page=1';
}
