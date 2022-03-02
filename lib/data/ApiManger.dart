import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sportnews/data/source_response.dart';
class ApiManger{
  static const String apiKey= '0b4827552d8e43b0ae8e98a1e7588c8c';
  static Future<SourceResponse>loadNewsource(String category)async{
    var pramets={
    'apiKey':apiKey,
      'category':category,
    };
    var uri=Uri.https('newsapi.org','/v2/top-headlines/sources' ,pramets);
    var response =await http.get(uri);
    var souresResponse=SourceResponse.fromJson(jsonDecode(response.body));

    if(response.statusCode==200){
        return souresResponse;
    }
    if(souresResponse.message!=null)
      throw Exception(souresResponse.message);
      throw Exception('error loading soures');

    }
}
