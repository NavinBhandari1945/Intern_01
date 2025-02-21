import 'package:http/http.dart' as http;
class Baseclient{
  String url="https://jsonplaceholder.typicode.com/photos";
  var client=http.Client();
  Future<dynamic> get(String api)async{
    var response=await client.get(Uri.parse(url+api));
    if(response.statusCode==200)
      {
        return response.body;
      }
    else{
      print("get exception");
    }
  }

  Future<dynamic> post(String api)async{

  }

  Future<dynamic> put(String api)async{

  }

  Future<dynamic> delete(String api)async{

  }
}