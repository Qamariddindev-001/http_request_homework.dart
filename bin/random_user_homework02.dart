//Task 2: Retrieve Random User's Gender as a Map
//Create a Dart function named getGender that makes an HTTPS request to the Random User API, retrieves a random user's data, and returns their gender as a map with the key "gender".
import 'dart:convert';

import 'package:http/http.dart' as http;

getGender() async {
  String url = 'https://randomuser.me/api/';
  Uri uri = Uri.parse(url);

  http.Response response = await http.get(uri);

  Map m = jsonDecode(response.body);
  Map n = {};
  n["gender"] = m["results"][0]['gender'];

  return n;
}

void main() async {
  Map a = await getGender();

  print(a);
}
