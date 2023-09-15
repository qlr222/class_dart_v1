abstract class Animal {

  String name;

  Animal(this.name);
  void makeSound();
}

class Dog extends Animal{
  // 메모리에 Animal이 먼저 올라가야한다.
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('$name 이(가) 멍멍합니다');
  }
}
class Cat extends Animal{
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print('$name 이(가) 야옹합니다');
  }
}

void main() {
  // 리스트에 객체 넣기
  // 반복문을 통해 실행 해보기

  Dog dog = Dog('김뽀삐');
  Cat cat = Cat('박춘식');

  List<Animal> animals = [dog, cat];

  for(var a in animals) {
    a.makeSound();
    print('-----------------------');
  }
}