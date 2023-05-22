void main(){

/*   Operate oper = sum;

   int result = oper(1,2);
   print(result);*/

//이렇게 쓰진 않고 아래처럼 쓰는데 잘 쓰면 유용할 듯 하다

  int oper = eazy(1,2,sum);
  print(oper);


}

//signature
typedef Operate = int Function(int x , int y);

int sum(int x , int y) => x + y;
int subract(int x , int y) => x - y;

int eazy(int x, int y, Operate operate){
  return operate(1, 2);
}
