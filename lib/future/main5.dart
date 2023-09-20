import 'package:http/http.dart' as http;

void main() {
  // https://jsonplaceholder.typicode.com/todos/1
//   fetchTodo().then((res) {
//     print('http status code : ${res.statusCode}');
//     print('-------------------------------------------');
//     print('http Message Header : ${res.headers}');
//     print('-------------------------------------------');
//     print('http Message Body : ${res.body}');
//   });
// }

  fetchTodoList().then((res) {
    print('http status code : ${res.statusCode}');
    print('-------------------------------------------');
    print('http Message Header : ${res.headers}');
    print('-------------------------------------------');
    print('http Message Body : ${res.body}');
  });
}

// 함수 설계
Future<http.Response> fetchTodo() async {
  const url = 'https://jsonplaceholder.typicode.com/todos/1';
  var response = await http.get(Uri.parse(url));
  print(response.runtimeType);
  return response;
}

Future<http.Response> fetchTodoList() async {
  const url = 'https://jsonplaceholder.typicode.com/todos';
  var response = await http.get(Uri.parse(url));
  return response;
}