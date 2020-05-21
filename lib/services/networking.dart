import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class NetworkHelp {
  NetworkHelp(this.url);

  final String url;

  Future getData() async{
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      return jsonResponse;
    } else {
      print(response.statusCode);
    }
  }
}