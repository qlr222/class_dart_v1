import 'package:http/http.dart' as http;

void main() {
  // HTTP 요청 및 응답 처리를 만들어 보자
  // https://jsonplaceholder.typicode.com/photos/10
  // https://jsonplaceholder.typicode.com/photos

  fetchPhoto().then((res) {
    print('${res.body}');
  });

  print('---------------------------');

  fetchPhotoList().then((res) {
    print('${res.body}');
  });
}

Future<http.Response> fetchPhoto() async{
  const url = 'https://jsonplaceholder.typicode.com/photos/10';
  var response = await http.get(Uri.parse(url));
  return response;
}

Future<http.Response> fetchPhotoList() async{
  const url = 'https://jsonplaceholder.typicode.com/photos';
  var response = await http.get(Uri.parse(url));
  return response;
}