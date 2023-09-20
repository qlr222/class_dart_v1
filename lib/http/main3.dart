import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  // 함수 처리 - 통신
  // List<Todo> todos 파싱 까지
  List<Todo> todos = [];

  var res = await fetchTodoList();
  if (res.statusCode == 200) {
    print('통신 성공');

    List<dynamic> list = json.decode(res.body);

    // list.forEach((e) {
    //   Todo letTodo = Todo.fromJson(e);
    //   todos.add(letTodo);
    // });
    // print(todos[0].toString());

    // 추후 학습
    List<Todo> myTodo =list.map((e) => Todo.fromJson(e)).toList();
    print(myTodo[0].toString());

  } else {
    print('통신 실패');
  }
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  // [ ]
  // { } <-- 명명된 파라미터

  Todo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  Todo.fromJson(Map<String, dynamic> map)
      : userId = map['userId'],
        id = map['id'],
        title = map['title'],
        completed = map['completed'];

  @override
  String toString() {
    return 'userId : $userId, id : $id, title : $title, completed : $completed';
  }
}

Future<http.Response> fetchTodoList() async {
  const url = 'https://jsonplaceholder.typicode.com/todos';
  final response = http.get(Uri.parse(url));
  return response;
}
