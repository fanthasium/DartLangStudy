

void main(){
/* var c = Constructor(xp: 0);
 var redTeam = Constructor.redTeam(name: 'Rbert');
 Constructor(name: '' , xp: 1).sayHello();
 a.sayHello();*/

  var value = CoolConst.FavoritAnim(name: "TOM")
  //WOW casCade!
  ..introduce()
  ..name
  ..xp
  ..animal;

  value.xp = 12;
  value.animal = 'Dog';
  value.name = 'DAl';

  value.introduce();
}


class CoolConst{
  late int xp;
  late String name;
  late String animal;

  CoolConst.FavoritAnim({required this.name})
      : this.xp = 1,
        this.animal = "cat";


  introduce() => print('im [$name] /i have [$animal] /days of [$xp]');



}
/*
 예시
class Constructor{
  final int xp;
  late String name;

  Constructor({this.name = '안호당' , required this.xp});

  //이렇게 새로운 매서드를 만들고 : 로 초기화도 가능함 개신기!!!
  Constructor.redTeam({required String name}
      ): this.xp = 12,
         this.name = name;

    sayHello() => print('$name , hi u r xp at least $xp');
}*/
