class Animal {
  // 속성 만들어 주세요
  String? name;
  int? age;
  String? area;


  // 기능 만들어 주세요
  void showInfo() {
    print('나는 $name입니다.');
    print('나이는 $age살입니다.');
    print('사는곳은 $area입니다.');
  }
}

void main() {
  // 실행 및 테스트
  Animal animal = Animal();
  animal.name = '사자';
  animal.age = 6;
  animal.area = '아프리카';

  animal.showInfo();
}
