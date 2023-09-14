class Bus {

  //
  int number;
  int count; // 승객 수
  int money; // 수입

  Bus(this.number, this.count, this.money);

  void take(int money) {
    this.count++;
    this.money += money;
  }
}

class Student2 {
  String name;
  int money;

  Student2(this.name, this.money);

  void takeBus(Bus bus) {
      money -= 1300;
      bus.take(1300);
  }
}

void main() {

  Bus bus100 = Bus(100, 0, 0);
  Bus bus200 = Bus(200, 0, 0);

  Student2 studentKim = Student2('김길동', 10000);
  Student2 studentLee = Student2('이길동', 5000);
  Student2 studentPark = Student2('박길동', 4300);

  print('학생 ${studentKim.name}의 잔액${studentKim.money}');
  print('학생 ${studentLee.name}의 잔액${studentLee.money}');
  print('학생 ${studentPark.name}의 잔액${studentLee.money}');

  studentKim.takeBus(bus100);
  studentLee.takeBus(bus100);

  print('--------버스 100 탑승--------');

  print('학생 ${studentKim.name}의 잔액${studentKim.money}');
  print('학생 ${studentLee.name}의 잔액${studentLee.money}');
  print('버스${bus100.number}의 탑승객${bus100.count}');
  print('버스${bus100.number}의 수입${bus100.money}');

  print('--------버스 200 탑승--------');

  studentKim.takeBus(bus200);
  studentLee.takeBus(bus200);
  studentPark.takeBus(bus200);

  print('학생 ${studentKim.name}의 잔액${studentKim.money}');
  print('학생 ${studentLee.name}의 잔액${studentLee.money}');
  print('학생 ${studentPark.name}의 잔액${studentPark.money}');
  print('버스${bus200.number}의 탑승객${bus200.count}');
  print('버스${bus200.number}의 수입${bus200.money}');

}