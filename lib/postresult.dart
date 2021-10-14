import 'dart:convert';
import 'package:http/http.dart' as http;

// 1. Create POJO  according the return of API
class PostResult{
  String id;
  String name;
  String job;
  String createdAt;

  PostResult({this.id, this.name, this.job, this.createdAt});

  // 2. Create factory to map JSONObject to POJO
  factory PostResult.createPostResult(Map<String, dynamic> object){
    return PostResult(
        id: object['id'],
        name: object['name'],
        job: object['job'],
        createdAt: object['createdAt']);
  }

  // 3. Create method to connect to API
  static Future<PostResult> connectToApi(String name, String job) async {
    String APIurl = 'https://reqres.in/api/users';
    var apiResult =  await http.post(APIurl, body: {
      "name": name,
      "job": job,
    });
    var jsonObject = json.decode(apiResult.body);

    return PostResult.createPostResult(jsonObject);
  }
}