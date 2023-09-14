class Student {
  // 이름, 나이 -> private로 선언
  String? _name;
  int? _age;

  // 축약형 get, set 메서드를 만들어 주세요
  // get
  String? get name => this._name;
  int? get age => this._age;

  // set
  set name(String? name) => this._name = name;
  set age(int? age) => this._age = age;
}
