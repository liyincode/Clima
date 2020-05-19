import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class NetworkHelp {
  NetworkHelp(this.url);

  final String url;

  Future getData() async{
    String url = 'https://free-api.heweather.net/s6/weather/now?location=beijing&key=10fa5181377e492f86277c71dc19b2b4';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      return jsonResponse;
    } else {
      print(response.statusCode);
    }
  }
}