import 'package:projeto_1/models/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>> getList();
}
