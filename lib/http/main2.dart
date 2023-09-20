import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {

  String jsonArrayStr = '''
  [
    {
      "userId": 1,
      "id": 1,
      "title": "delectus aut autem",
      "completed": false
    },
    {
      "userId": 1,
      "id": 2,
      "title": "quis ut nam facilis et officia qui",
      "completed": false
    }
  ]
  ''';

  // 반드시 기억
  // json.decode(String); --> Map<String, dynamic> ( Json )
  // json.decode(String); --> List<dynamic> ( Json Array Type)
  print(json.decode(jsonArrayStr).runtimeType);
  List<dynamic> listBody1 = json.decode(jsonArrayStr);
  print(listBody1.runtimeType);
  print(listBody1[0]);
  print(listBody1[0].runtimeType);

  // listBody1 리스트 안에 Map --> 반복 돌면서 object 변환 과정이 필요
  List<Todo> todos = [];
  for(var m in listBody1) {
    Todo letTodo = Todo.fromJson(m);
    todos.add(letTodo);
  }
  print(todos.length);
  print(todos[0].userId);
  print(todos[0].id);
  print(todos[0].title);
  print(todos[0].completed);
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