import 'dart:convert';
import 'package:http/http.dart' as http;

class User{
  String id;
  String name;

  User({this.id, this.name});

  factory User.createUser(Map<String, dynamic> object){
    return User(
      id: object['id'].toString(),
      name: object['first_name'] + " " + object['last_name']
    );
  }

  static Future<List<User>> connectToAPI(String id) async{
    List<User> user;
    String APIUrl = 'https://reqres.in/api/users?page='+id;

    var APIresult = await http.get(APIUrl);
    var jsonObject = json.decode(APIresult.body);
    List data = (jsonObject as Map<String, dynamic>)['data'];

    for (int i = 0; i<data.length; i++){
      user.add(User.createUser(data[i]));
    }
    return user;
  }
}