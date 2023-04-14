


void main(){
  print(typeTest({'first' : 'cat'}));
}

// type을 지정해줄 수 있음
typedef COUSTOM_TYPE = Map<String, String>;

typeTest(COUSTOM_TYPE list) => '$list';
//or
COUSTOM_TYPE typeTest2(COUSTOM_TYPE list){

    return list;
}

