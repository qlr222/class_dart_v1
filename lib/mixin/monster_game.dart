mixin AttackBehavior{
  void attack(Monster target);
}

abstract class Weapon {
  int damage;
  Weapon(this.damage);
}

class Sword extends Weapon{
  Sword(int damage) : super(damage);
}

class Bow extends Weapon{
  Bow(int damage) : super(damage);
}

class Monster with AttackBehavior{
  String name;
  num hp;
  // 무기
  Weapon weapon;

  Monster(this.name, this.hp, this.weapon);

  void showInfo() {
    print('------ 상태창 ------');
    print('이름 : $name');
    print('무기 데미지 : ${weapon.damage}');
    print('현재 HP : $hp');
  }

  @override
  void attack(Monster target) {
    print('${this.name} 이(가) ${weapon.damage}의 공격력으로 ${target.name} 을(를) 공격합니다.');
    target.hp -= this.weapon.damage;
  }
}

void main() {
  Sword sword = Sword(10);
  Bow bow = Bow(5);
  Monster monster1 = Monster('드래곤', 100, sword);
  Monster monster2 = Monster('고블린', 50, bow);

  monster1.attack(monster2);
  monster1.attack(monster2);
  print('-----------------------------');
  monster2.showInfo();
  print('-----------------------------');
  monster2.attack(monster1);
  monster2.attack(monster1);
  print('-----------------------------');
  monster1.showInfo();
}