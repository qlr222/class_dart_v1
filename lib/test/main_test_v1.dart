
import 'dart:io';

import 'package:flutter_v1/test/student.dart';
import 'package:flutter_v1/test/subway.dart';

void main() {
  Subway line1 = Subway(1, 0, 0);
  Subway line2 = Subway(2, 0, 0);

  Student studentKim = Student('김티모', 10000);
  Student studentLee = Student('이스오', 6500);
  print('몇호선을 타시겠습니까.');
  String line = stdin.readLineSync()!;

  // int number = int.parse(line);
  //
  // if(number == 1) {
  //   studentKim.takeSubway(line1);
  //   line1.showInfo();
  // } else if(number == 2) {
  //   studentKim.takeSubway(line2);
  //   line2.showInfo();
  // } else {
  //   print('없는 호선입니다.');
  // }
  //
  // print('-------------------');
}