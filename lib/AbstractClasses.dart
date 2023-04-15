
void main(){
   var c = Player();
   c.walk();
   var s = Taker();
   s.strengthLevel();

}

// 다양한 변수들의 오탈자를 막아줌 (권a장)
enum Team { red, blue }

abstract class Human{
  void walk(){print('lalal bula');}
  int distance(){ return 2;}
}

// 추상클래스는 super. 으로 부모의 값을 가져올수도 아님 그 매서드를 오버라이딩 할수 있음
class Player extends Human{

  @override
  void walk() {
   super.walk();
    print("too long");
  }

  @override
  int distance() {
    return 100;
  }
}

//그러나 with는 좀다르다
class Strong{
  final double strength = 99.1;
}

class Taker with Strong{
  //해당 인스턴스를 그냥 가져 오는 것? interface는 초기화가 안됨 추상은 됨 근데 그걸 class로 해주는 거?
  //mixin은 생성자가 없어야함 부모거를 뺏어온느ㅡ 개념
  strengthLevel()=> print(strength);
}
