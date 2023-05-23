
import 'package:flutter_lang_study/dart3.0/3.0_class/classPractice.dart';

void main(){

}

//car클래스는 base기에 extend로만
//interface면 implements가능

final class C implements Car{
}

//sealed class 는 mixin이기에 외부에선 참조 x sealed는 final클래스의 기능도 갖고있는것임
//받고 싶으면 base,interface로된 부모로부터 받고 자식 클래스 접근제한자에 final, base, sealed를 달아야함
class B extends Person{

}