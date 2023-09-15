// 믹스인 정의 - mixin 키워드를 사용한다.
mixin LoggingMixin {
  String tag = "LoggingMixIn";

  // 믹스인은 생성자를 가질 수 없다.
  // LoggingMixin(this.tag);

  void log(String message) {
    print('Log - $tag : $message');
  }
}

class User with LoggingMixin {
  String name;
  User(this.name);
}

void main() {

  User user = User('홍길동');
  user.tag = 'User';
  user.log('Test User Class');

}
