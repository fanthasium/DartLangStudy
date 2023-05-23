
void main(){

}

// final로 선언하면 Extend,implement. or mixin으로 사용이 불가능
// 부모를 base로 선언하면 Extend는 가능하지만 implement는 불가능
// 자식은 base, sealed, final 선언된 클래스만 extend가 가능

// 부모를 interface로 선언하면 implement는 가능하지만 Extend는 불가능
base class Car{
  final String engine;
  final int wheel;

  Car(this.engine,this.wheel);
}

final class HyunDai extends Car{
  HyunDai(super.engine, super.wheel);

}

//sealed클래스는 abstract이면서 final이다
//그리고 패턴매치를 사용할수 있도록 해준다

sealed class Person{}

class Idol extends Person{}
class Chef extends Person{}
class Engineer extends Person{}


//sealed클래스를 사용하면 이렇게 매칭됐는지 확인 가능한 class생성가능
String whoIsHe(Person person) => switch(person){
  Idol i =>"$i",
  Chef e =>"셰프",
  _ => "나머지"

};

//Mixin class
// 1) mixin은 extends나 with를 사용할 수 없다. 때문에 mixin class도 마찬가지로 사용x
// 2) 클래스는 on키워드를 사용할 수 없다. 때문에 mixin도 on사용 x