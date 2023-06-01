//Task 3: Retrieve Random User's Email as a Map
//Create a Dart function named getEmail that makes an HTTPS request to the Random User API, retrieves a random user's data, and returns their email as a map with the key "email".

import 'dart:convert';

import 'package:http/http.dart' as http;

getEmail() async {
  String url = 'https://randomuser.me/api/';
  Uri uri = Uri.parse(url);

  http.Response response = await http.get(uri);

  Map m = jsonDecode(response.body);
  Map n = {};
  n["email"] = m["results"][0]['email'];

  return n;
}

void main() async {
  Map a = await getEmail();

  print(a);
}
