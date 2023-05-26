void main() {
  final result1 = nameAndAge({'name': '민지', 'age': 12});
  print(result1[0]);


  final result2 = nameAndAge2({'name': '민지', 'age': 12});
  print(result2.$1.isEmpty);
  print(result2.$2);

  print("-------------");
  final result3 = normalDartNew();
  for(var item in result3){
    print(item.$1);
    print(item.$2);
  }
  print("-------------");
  final result4= namedParameter();
  for(var item in result4){
    print(item.name);
    print(item.age);
  }

}


// 기본 문법에서는 이렇게 json값을 반환해 왔다 -> 이렇게 하면 타입을 보장받을 수 없었다
nameAndAge(Map<String, dynamic> json) {
  return [json['name'], json['age']];
}

//record에서는 이렇게 하면 리스트 0,1 번쨰 타입을 보장받음
(String, int) nameAndAge2(Map<String, dynamic> json) {
  return (json['name'] as String, json['age'] as int);
}

//기존에서는 이렇게
List<Map<String, dynamic>> NewJeans() {
  return [
    {
      'name': 'yura2',
      'age': 12
    }, {
      'name': 'heayung',
      "age": 13
    }
  ];
}

//3.0에선 키 값을 입력하지 않아도됨 왜? 어차피 타입이 보장되니까!
List<(String name, int age)> normalDartNew() {
  return [
    (
        'yura2',
         12
    ),
    (
         'heayung2',
         13
    )
  ];
}

//네임드 파라미터러 만들어서 ({String name, int age}) 로 하면 키값을 입력해 줘야함
List<({String name, int age})> namedParameter() {
  return [
    (
    name : 'yura2',
    age : 12
    ),
    (
    name : 'heayung2',
    age : 13
    )
  ];
}

