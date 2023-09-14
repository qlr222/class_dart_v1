import 'package:flutter_v1/encapsulation/student.dart';

void main() {
  Student student = Student();
  student.name = '홍길동';
  student.age = 29;

  print('이름 : ${student.name}');
  print('나이 : ${student.age}');

}
