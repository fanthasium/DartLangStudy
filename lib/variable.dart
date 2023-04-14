void main(){

  final type = 0; // 한번 정의된 변수를 변경할 수 없음
  var type2 = 0; //  수정 가능
  const type3 = 0; // compile - time 에 메모리상으로 올라감 final과 같은 상수임

  /*#############################################################*/

  //ex Api Response
  final api = "change in compile time 그러나 runtime시에 만들어 질 수 있음";  //  ex) user data state
  const apiResponse = "do not change in compile time ";  // ex) 상수,api key

  //final, var 은 앱 스토어에 올린 후 사용자 입력으로 받아낸 값이고
  //const 는 올리기 전부터 알고 있는 값임

 /* ########################################################### */
  late final String name;  // 초기 데이터 없이 변수 선언가능
  late var c;
  late int c1;

  //Do something , go to api
  name = 'hosung'; // 나중에 선언 가능

  /* ########################################################### */

  dynamic name2;  //dynamic type can be anyone type
  name2 = true;
  name2 = '';
  name2 = 0;

  // var이랑은 다른게 var은 타입을 추론하는거지 여러가지를 대입할 순 없음


}