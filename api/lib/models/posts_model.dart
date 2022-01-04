class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post(this.userId, this.id, this.title, this.body);

  factory Post.fromJson(Map json) {
    return Post(json['userId'], json['id'], json['title'], json['body']);
  }
  String toString() {
    return 'id: $id';
  }
}
