void main() {
  // 1. null의 안전한 객체의 사용 가능한 속성 접근
  String? maybeName;

  // 문자열 값이 null이 아니면 문자열 길이를 리턴하고
  // null이면 길이값 0을 리턴한다
  int length = maybeName?.length ?? 0;
  print('length : $length');

  // 2. null의 안전한 객체 메서드 접근
  String? name = getName(); // null 또는 문자열을 반환 가능
  String returnName = name?.toLowerCase() ?? 'HONG GIL DONG';

  print('$returnName');

  // 3
  String displayName = name ?? 'Unknown';
  print('$displayName');
}

// 함수
String? getName() {
  return null;
}
