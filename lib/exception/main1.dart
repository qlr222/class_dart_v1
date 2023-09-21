void main() {

  Exception exception;
  Error error;
  try {
    int result = 10 ~/ 0;
    print('result : $result');
  } catch (error, stackTrace) {
    // 예외 처리 코드
    print('An error : $error');
    print('An error : $stackTrace');
  } finally {
    // 예외 발생과 상관없이 항상 실행되는 코드
    print('반드시 실행 되는 블록');
  }
  print('----------------------------------');
}
