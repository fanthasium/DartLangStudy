
void main(){

  final result = nameAndAge({"name ": '민지', "age": 12});
  print(result[0]);

  final result2 = nameAndAge2({"name ": '민지', "age": 12});
  print(result2.$1.length);

}

//Record
// 기본 문법에서는 이렇게 json값을 반환해 왔다 -> 이렇게 하면 타입을 보장받을 수 없었다
nameAndAge(Map<String, dynamic> json){
  return [json['name'] as String, json['age']];
}

//record에서는

(String, int)nameAndAge2(Map<String, dynamic> json){
  return (json['name'] as String, json['age'] as int);
}