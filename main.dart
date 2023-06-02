void main() {
  print('Hello!'); // 출력 함수

  var age = 5; // var 는 값에 의한 타입 추론이 됨
  String name = 'Kim'; // 명시적 타입 지정

  dynamic gender; // dynamic 은 any와 같이 어떤 타입이 들어오든 ok
  if (gender is String) {
    // gender 가 String 이라는 것을 알기 때문에 String 관련 메서드 사용이 가능해짐
  }

  // nullable
  String? hobby;

  // null 이 아니라는 것을 꼭 확인하고 사용
  if (hobby != null) {
    var result = hobby.isNotEmpty;
  }

  // 또는, 위의 조건문 대신 아래처럼 사용 가능
  var result = hobby?.isNotEmpty;

  // 값을 변경할 수 없는 변수를 선언할 때 = const
  final skill = 'Dart';
  // skill = 'Flutter';

  // late 수식어 : 초기 데이터 없이 변수를 선언할 수 있게 해주는 키워드
}
