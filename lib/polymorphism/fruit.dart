class Fruit {
  String name;
  int price;

  Fruit(this.name, this.price);

  void showInfo() {
    print('상품명 : $name');
    print('가격 : $price');
  }
}

class Peach extends Fruit {
  Peach(super.name, super.price);
}

class Banana extends Fruit {
  String origin;

  Banana(super.name, super.price, this.origin);
}

void main() {
  // 업캐스팅 다운캐스팅 의미를 알아보자.
  List<Fruit> fruits1 = [Banana('델몬트 바나나', 3000, '필리핀'), Peach('납작복숭아', 5000)];

  fruits1[0].name;
  fruits1[0].price;
  fruits1[0].showInfo(); // 업 캐스팅 된 상태
  // fruits[0].origin 컴파일 시점에 선언되어  데이터 타입까지만 확인 할 수 있다.

  // 업 캐스팅 된 상태 바나나에 origin 변수에 접근하고 싶다면 어떻게 해야할까?
  // 컴파일 시점에 형 변환 처리를 하면 된다.
  // Banana banana1 = ((Banana)fruits1[0]).origin; java에서 다운 캐스팅(형변환 방법)
  Banana banana1 = fruits1[0] as Banana; // 다운 캐스팅 상태
  print(banana1.origin);
  // as : 상속 관계에서 형 변환을 처리할 수 있습니다.
}
