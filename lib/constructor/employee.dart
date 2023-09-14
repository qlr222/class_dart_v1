void main() {
  Employee employee1 = Employee('홍길동', 30);
  employee1.display();
  print('-------------------');
  Employee employee2 = Employee('이순신', 35, 'IT', 1000);
  employee2.display();
}

class Employee {
  String? name;
  int? age;
  String? subject;
  double? salary;

  // 1단계
  // 생성자 안에 [] - 옵션 값이다. 즉 받아도 되고 안받아도 되는 값들을 설정 할 수 있다.
  // Employee(this.name, this.age, [this.subject, this.salary]);

  // 2단계
  // 생성자 옵션에 기본값을 할당해 줄 수 있다.
  Employee(this.name, this.age, [this.subject = 'N/A', this.salary = 0.0]);

  void display() {
    print('name : ${this.name}');
    print('age : ${this.age}');
    print('subject : ${this.subject}');
    print('salary : ${this.salary}');
  }
}
