

Future<void> fetchUserOrder() {
  // Imagine that this function is fetching user info from another service or database.

  return Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
}

void main() async{

  fetchUserOrder();
  print("lulu lala");
  Future.delayed(Duration(seconds: 1), () async => print( await 'Fetching user order...'));
}