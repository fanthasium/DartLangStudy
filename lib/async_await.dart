

Future<void> fetchUserOrder() {
  // Imagine that this function is fetching user info from another service or database.

  return Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
}

void main() async{

  fetchUserOrder();
  fetchUserOrder2(); // 룰루 랄라가 이후 출력되는데 !!
  print("lulu lala");
  Future.delayed(Duration(seconds: 1), () async => print( await 'Fetching user order...'));


}

fetchUserOrder2() async{
   print(await "im the one!!");

  print("lulu lala");
  Future.delayed(Duration(seconds: 1), () async => print( await 'Fetching user order...'));

}