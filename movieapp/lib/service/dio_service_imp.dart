import 'package:dio/dio.dart';
import 'package:movieapp/service/dio_service.dart';

class DioServiceImp implements DioService {
  bool isGetRequest = false;
  DioServiceImp({bool? isGetRequest});
  Dio getDio() {
    const API_KEY = String.fromEnvironment('APIKEY');
    const BASE_URL = String.fromEnvironment('BASE_URL');
    var queryParameters = {'api_key': API_KEY};

    var dio = Dio(
      BaseOptions(
          baseUrl: BASE_URL,
          headers: {
            'content-type': 'application/json:charset=utf-8',
            'Authorization': 'Bearer ${API_KEY}',
          },
          queryParameters: queryParameters),
    );
    dio.interceptors.add(LogInterceptor(responseBody: false));
    return dio;
  }
}
