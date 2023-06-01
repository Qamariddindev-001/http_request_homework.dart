//Task 6: Retrieve Random User's Location as a Map
//Create a Dart function named getLocation that makes an HTTPS request to the Random User API, retrieves a random user's data, and returns their location (including city, state, and country) as a map with the key "location".
import 'dart:convert';

import 'package:http/http.dart' as http;

getLocation() async {
  String url = 'https://randomuser.me/api/';
  Uri uri = Uri.parse(url);

  http.Response response = await http.get(uri);

  Map m = jsonDecode(response.body);
  Map n = {};
  n["location"] = m["results"][0]['location'];

  return n;
}

void main() async {
  Map a = await getLocation();

  print(a);
}
