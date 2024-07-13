import 'dart:convert';
import 'package:http/http.dart'as http;
import 'modelapi.dart';
class Name{
  Future<List<NameApi>>getname(String id, String gender)async{
    const String url = "https://trrev.in/justacademy-project/public/api/auth/get-baby-name";
    Map<String,dynamic> requestbody={"category_id" :id,"gender":gender};
    try{
      final response  = await http.post(Uri.parse(url),
          headers: {
            'Content-Type':'application/json',
          },
          body: jsonEncode(requestbody)
      );
      if(response.statusCode == 200){
        print("api Successfull" + response.body.toString());
        final Map<String,dynamic>responseData=json.decode(response.body);
        final List<dynamic> data = responseData["data"];
        print("api data" + response.body.toString());
        return data.map((json) => NameApi.fromJson(json)).toList();
      }
      else{
        throw Exception("Failed to get data : ${response.statusCode}");
      }
    }
    catch(e){
      throw Exception("Error : $e");
    }}

}
