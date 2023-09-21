void main() {

  // 특정 예외를 잡아서 다르게 처리하고 싶다면 ON 키워드를 사용한다.

  try {
    return;
    // print('result : $result');
  } on IntegerDivisionByZeroException {
    print('어떤 수를 0으로 나눌 수 없습니다.');
  } on UnsupportedError {
    print('제공하지 않는 라이브러리');
  } catch(e, s) {
    print('error : $e');
  } finally {
    print('실행 종료');
  }
  print('----------------------------------');
}
