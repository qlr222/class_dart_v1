// 메인 함수 - 코드의 시작점
void main() {
  Rectangle rectangle = Rectangle();
  try {
    double result = rectangle.calculateArea();
    print('직사각형의 넓이는 : $result');
  } catch (e) {
    print('에러메시지 확인 : $e');
  }
  print('---------------------');
  print('여기가 실행이 될까요?');
} // end of code

class Rectangle {
  double? width; // null 허용 가능
  double? height; // null 허용 가능

  double calculateArea() {
    // 개발자가 명시적으로 ! null이 아니다라고 명시 할 수 있음
    return width! * height!;
  }
}
