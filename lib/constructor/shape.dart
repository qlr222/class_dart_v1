void main() {
  Shape shape = Shape();

  print(shape.calcultorCircleArea(5));
  print(shape.calculatorRectagleArea(10, 20));

}

class Shape {
  double? radius;
  double? width;
  double? height;

  double calcultorCircleArea(double radius) {
    return radius * 3.14 * 3.14;
  }

  double calculatorRectagleArea(double width, double height) {
    return width * height;
  }
}
