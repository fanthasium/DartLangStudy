void main() {
  final (name, age) = ('민지', 20);
  print(name);
  print(age);

  //or
  const hunterX = ('스즈메','준오');
  final (x1,y2) = hunterX;
  print(x1);
  print(y2);

  print("--------------------------");
  // 이건 좀 괘랄한 문법인다 언젠간 쓰이게찌?
  final numbers = [1,2,3,4,5,6,7,8];
  final [x,y,...,z] = numbers; // ...은 딱 한번 사용가능
  print(x); // 1
  print(y); // 2
  print(z); // 8

  final [a,b,...c,d] = numbers;
  print(a); // 1
  print(b); // 2
  print(c); // 3,4,5,6,7

  final [q,_,...,w,_] = numbers;
  print(q); // 1
  print(w); // 7

  print("--------------------------");
  // 또 이런 것 까지 된다..
  final newNum = Idol(name: '호성', age: 12);
  final Idol(name: name4, age: age4) = newNum;
  print(name4);
  print(age4);

}
class Idol{
  final String name;
  final int age;

  Idol({required this.name, required this.age});
}

