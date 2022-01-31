import 'package:dio/dio.dart';
import 'package:projeto_1/models/post_model.dart';
import 'package:projeto_1/repositories/home_repository.dart';

class HomeRepositoryImp implements HomeRepository {
  Future<List<PostModel>> getList() async {
    try {
      var path = 'https://jsonplaceholder.typicode.com/posts';
      var response = await Dio().get(path);
      return (response.data as List)
          .map((json) => PostModel.fromJson(json))
          .toList();
    } catch (e) {
      print(e);
    }
    return [];
  }
}
