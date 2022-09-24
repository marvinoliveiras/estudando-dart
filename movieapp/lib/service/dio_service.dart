import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class DioService {
  DioService({bool? isGetRequest});
  Dio getDio();
}
