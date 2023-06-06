// Function
void sayHello(String name) {
  print('안녕하세요 $name님!');
}

String whatYourName(String name) => '안녕하세요 $name님!';

String sayUserInfo({
  // Named argument -> null safety 는 default value 로 해결!
  String name = 'anon',
  int age = 100,
  String country = 'korea',
}) {
  return 'Name: $name / age: $age / country: $country';
}

String sayUserInfo2({
  // Named argument -> null safety 는 required 사용
  required String name,
  required int age,
  required String country,
}) {
  return 'Name: $name / age: $age / country: $country';
}

String sayHalo(String name, int age, [String? country = 'KOREA']) =>
    '제 이름은 $name이고 나이는 $age, 사는 곳은 $country입니다.';

String capalizeName(String? name) {
  // ?? : question question operator
  // 좌항 ?? 우항 에서 좌항이 null 이면 우항이 return, 좌항이 null 이 아니면 좌항 return
  return name?.toUpperCase() ?? 'ANON';
}

// Typedef
typedef ListOfInts = List<int>;

ListOfInts reversList(ListOfInts list) {
  var reversedList = list.reversed;
  return reversedList.toList();
}

typedef UserInfo = Map<String, String>;

String takeMessage(UserInfo userInfo) {
  return 'Hi ${userInfo['name']}!!!';
}

// Class
class Player {
  final String name = 'nico';
  int xp = 22;

  void sayHello() {
    print('Hello, My name is $name'); // this.name OK
  }
}

class CustomPlayer {
  final String name, team;
  int xp, age;

  // Named Constructor Parameter
  CustomPlayer({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });
}

void main() {
  // 인자가 있는 클래스의 호출
  CustomPlayer p1 = CustomPlayer(
    name: 'Kim',
    xp: 100,
    team: 'Halo',
    age: 25,
  );
  var p2 = CustomPlayer(
    name: 'Lee',
    xp: 22,
    team: 'Halo',
    age: 20,
  );

  // 클래스의 호출 -> 인스턴스 생성
  var palyer = Player();

  print(reversList([1, 2, 3, 4, 5]));

  // QQ equal operator
  String? book;
  book ??= 'PROPAGANDA';

  print(sayHalo('Kim', 20));

  print(sayUserInfo(name: 'Kim', age: 19));

  print('Hello!'); // 출력 함수

  String name = 'Kim'; // 명시적 타입 지정

  dynamic gender; // dynamic 은 any와 같이 어떤 타입이 들어오든 ok
  if (gender is String) {
    // gender 가 String 이라는 것을 알기 때문에 String 관련 메서드 사용이 가능해짐
  }

  // nullable
  String? hobby;

  // null 이 아니라는 것을 꼭 확인하고 사용
  if (hobby != null) {
    var result = hobby.isNotEmpty; // var 는 값에 의한 타입 추론이 됨
  }

  // 또는, 위의 조건문 대신 아래처럼 사용 가능
  var result = hobby?.isNotEmpty;

  // 값을 변경할 수 없는 변수를 선언할 때 = const
  final skill = 'Dart';
  // skill = 'Flutter';

  // late 수식어 : 초기 데이터 없이 변수를 선언할 수 있게 해주는 키워드
  late final String key;
  key = '1234';

  var giveMeFive = true;

// collection if
  List<int> numbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5, // true 일 때만 추가됨
  ];

// String Interpolation
  var nickname = '강아지';
  var age = 5;

  var greeting = '안녕하세요 ${nickname}님 ${age + 10}';
  print(greeting);

  // Collection for
  var oldFriends = ['Kim', 'Lee'];
  var newFriends = [
    'Seo',
    'Yoon',
    for (var friend in oldFriends) "$friend 👍",
  ];
  print(newFriends);

  // Maps
  Map<String, Object> player = {
    'name': 'Kim',
    'xp': 19.99,
    'superpower': false,
  };

  // Set
  Set<String> names = {'Kim', 'Lee', 'Park'};
  names.add('Lee');
  names.add('Hui');
  names.add('Lee');
  print(names);
}
