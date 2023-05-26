void main(){

   switcher([1,2]);
   switcher([1,2,3]);
   switcher(12);

   switcher2(1);

   newMember();
}

void switcher(dynamic anything){
  switch(anything){
    case [int a, int b]:     // 리스트 갯수 주고 리스트 값 확인
      print("match $a $b");
    case [_,_,_]:
      print("list size 3");
    case <13 && >10:           //범위 지정
      print("13<x<10");
    default:
      print("no match");
  }
}

void switcher2(dynamic anything) => switch(anything) { 5=> print("match 5") , _=> print("no match")};

void switcher3(dynamic anything, bool Bolean) => switch(anything) {   //이건 좀 유용할지도
  5 when Bolean => print("match 5") , 6 when !Bolean => print("Boolean false = match6") , _=> print("no match")
};


void newMember(){
  final List<Map<String,dynamic>> members = [
    {
      'name' : '호성',
      'pie' : 20
    },
    {
    'name' : '곤',
      'pie' : 13
    }
  ];

  for(final c in members){
    print(c['name']);
    print(c['pie']);
  }

  // or distructuring

  for(var {'name' : name , 'pie' : pie } in members){
    print(name);
    print(pie);

  }

}
