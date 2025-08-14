import 'package:http/http.dart' as http;
import 'dart:convert';

class Network {
  Network({required this.uri});

  final String uri;

  Future getWeatherDetails() async {
    var url = Uri.parse(uri);
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
