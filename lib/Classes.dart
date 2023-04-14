

void main(){
  var classes = ImClass();
    classes.name = 2;    // class의 0 값을 2로 변경 가능
    ImClass().name = 2;  // class 에서 정의한 값만 사용 2는 할당 안됨

    print(classes.name);
}


class ImClass{
  //클래스에서 프로퍼티 선언은 var이아니라 타입으로 명시
   int name = 0;
   final String name2 = 'hosung'; // class외부에서 참조 불가능
   int xp = 1500;


   void sayHello(){
   /*  var name = 0; */
         print('hi ther number ${this.name}');  // class 전역 변수와 함수가 같을 떄 변수를 사용하고 싶으면 This
         print('hi ther numbere $name');   // 안 겹치면 그냥 사용 ㅇㅋ
       }

}