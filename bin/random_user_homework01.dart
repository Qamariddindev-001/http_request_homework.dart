//Task 1: Retrieve Random User's Full Name as a Map
//Create a Dart function named getFullName that makes an HTTPS request to the Random User API, retrieves a random user's data, and returns their full name as a map with the key "fullName".

import 'dart:convert';

import 'package:http/http.dart' as http;

getFull() async {
  String url = 'https://randomuser.me/api/';
  Uri uri = Uri.parse(url);

  http.Response response = await http.get(uri);

  Map m = jsonDecode(response.body);
  Map name = {};
  name["first"] = m["results"][0]["name"]["first"];
  name['last'] = m["results"][0]["name"]["last"];
  return name;
}

void main() async {
  Map a = await getFull();

  print(a);
}
