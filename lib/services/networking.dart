import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  String url;

  Future getData(url) async {
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print('Status code got: ${response.statusCode}');
    }
  }
}
