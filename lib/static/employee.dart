class Employee {
  // static <-- 객체들이 공유 할 수 있는 메모리 공간이다.
  // 하지만 static은 해당 객체의 속성 값을 나타내는 것은 아니다.
  String? name;
  static int nextEmployeeNumber = 1000;
  int employeeNumber = 0;

  Employee(String name) {
    this.name = name;
    employeeNumber = nextEmployeeNumber;
    nextEmployeeNumber++;
  }

  // 함수는 - 독립적인 일련에 코드에 묶음 이다.
  // 메서드는 멤버 변수를 활용해서 기능을 구현한다.
  void display() {
    print('이름 : $name');
    print('사원번호 : $employeeNumber');
  }
}

void main() {
  // 제약 조건
  // Employee 클래스 안에 사원 번호 데이터를 받는 변수를 선언 하시오.
  // 단, Employee가 인스턴스화(객체) 되면 사원 번호는 자동으로 1씩 증가 할 수 있도록
  // 만들어 주세요.
  Employee employee1 = Employee('홍길동');
  Employee employee2 = Employee('김둘리');
  Employee employee3 = Employee('박또치');

  employee1.display();
  print('-----------------');
  employee2.display();
  print('-----------------');
  employee3.display();
  print('-----------------');
  print('다음 사원번호 : ${Employee.nextEmployeeNumber}');
}
