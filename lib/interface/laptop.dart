// 일반 클래스를 사용한 방법
class Laptop {
  // void 타입은 return타입 생략 가능 - 타입추론이 가능하다.
  turnOn() {
    print('전원을 켭니다.');
  }

  turnOff() {
    print('전원을 끕니다.');
  }
}

class Macbook implements Laptop {
  @override
  turnOn() {
    print('맥북 전원을 켭니다.');
  }

  @override
  turnOff() {
    print('맥북 전원을 끕니다.');
  }
}

void main() {
  Macbook macbook = Macbook();
  macbook.turnOn();
  macbook.turnOff();
}
