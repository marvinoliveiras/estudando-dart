import 'dart:convert';

import 'package:http/http.dart' as http;

Future main() async {
  print(await fetch());
}

Future<ToDo> fetch() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  var response = await http.get(url);
  var json = jsonDecode(response.body);
  var toDo = ToDo(
      title: json['title'],
      id: json['id'],
      userId: json['userId'],
      completed: json['completed']);
  return toDo;
}

class ToDo {
  late final String title;
  late final int id;
  late final int userId;
  late final bool completed;
  ToDo(
      {required this.title,
      required this.id,
      required this.userId,
      required this.completed}) {}
}
