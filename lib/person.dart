void main() {
  // Person person = new Person();
  // new 키워드 생략 가능
  Person person = Person();
  person.myName = '홍길동';
  person.phone = '010-1234-5678';
  person.age = 1234;
  person.displayInfo();
} // 클래스 설계 하기

class Person {
  // dart 2.2 버전 이후부터 진행
  // Nullable 타입의 이해
  // dart 이전 버전에서는 모든 변수가 null이 아닌 값으로
  // 셋팅 되었다. 명시적으로 null을 허용하는 여부를 표현 할 수 있는 타입이
  // nullable 타입이다.
  // String != String? 다른 녀석입니다.
  String? myName;
  String? phone;
  int? age;

  void displayInfo() {
    print('Person name : $myName');
    print('Person phone : $phone');
    print('Person age : $age');
  }
} // end of Person
