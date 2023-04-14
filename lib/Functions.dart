

void main(){
   print(capitalize('ccc'));
   print(capitalize2(null));
   variable();
}

// positional parameter   fat- arraow syntex is retrun value
introduce({ String name ='animus' , int age = 0, String country = 'noCountry'}) => 'name : $name , age : $age . country : $country';

// named parameter 사용 방법은 여러가지가 있는데 위에처럼 { } 괄호를 사용하거나
// request & nullsafety 을 사용하는거심 파라미터에 값을 넣고 싶지 않을 때
introduce2({ required String animal  , int age = 10} ) => 'like $animal its age : $age';

//optional parameter
//이전 널 세이프티를 중괄호 & Request를 사용했다면 옵셔널은 대괄호 & ? 을 사용할 거심
introduce3(  String animal  , [int? day = 7] ) => 'hate $animal how long hate : $day';


// 사용법을 알았다면 operator을 봐보자
capitalize(String? name) => name != null ? name.toUpperCase() : 'HOSUNGAN';
// 위 코드를 좀더 간결하게 하면    왼쪽이 true?  왼쪽  false?  오른쪽
capitalize2(String? name) => name?.toUpperCase() ?? 'HOSUNGAN';

/*  QQ operator를 변수에서 적용 */
void variable(){
  String? name;
  // 널이라면 오른 쪽 값을 대입
  name ??= 'park';
  print(name);
}
