void main(){

  var json = {'user': ['Lily','Aid']};
  var {'user': [name,age]} = json;

  //유효성 검사
  if(json is Map<String, Object?>
      && json.length == 1
      && json.containsKey('user')){
    /*List<String>? user = json['user']; */
     dynamic user = json['user'];
     /* var user = json['user']; */
    print(user);  // [Lily, 13]
    if(user is List<Object>
        && user.length == 2
        && user[0] is String
        && user[1] is int){
      print("cant in hear");
    }
  }
}
