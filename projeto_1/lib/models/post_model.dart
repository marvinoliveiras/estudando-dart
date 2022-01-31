class PostModel {
  final int userId;
  final int id;
  final String title;
  final String body;
  const PostModel(
      {required this.id,
      required this.userId,
      required this.title,
      required this.body});

  factory PostModel.fromJson(Map json) {
    return PostModel(
        id: json['id'],
        userId: json['userId'],
        title: json['title'],
        body: json['body']);
  }
  String toString() => "id: $id";
}
