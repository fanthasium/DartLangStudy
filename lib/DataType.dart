void main(){
  // string, int , double , bool 은 알테고 여기서 int double은 num 오브젝트에 있음 코틀린은 any로 정의

  //list정의는 이렇게
  List<int> list = [0,9,10,11];
  //COlection if -> If 로 값 추가가 가능
  var giveMeFive = true;
  List<int> list2 = [1,2,3,4,if(giveMeFive) 5];

  //COlection for -> for 로 값 추가가 가능
  List<int> list3 = [1,2,3,4,for(var i in list) list[i]];
  print(list3);

  // set은 요소 하나하나가 유니크함 요소 하나하나만 사용할 땐 set 반대일 땐 list가 좋음
  Set<int> set = {1,2,3};
  set.add(1);

 /*#########################################################*/

  Map<int, Object> map = {1 : true , 2: ''};
  var map2 = [ {1: true, 2 : ''} ]; // -> 리스트 0 안에 map 지정도 됨
  print(map2);
}