//Task 5: Retrieve Random User's Phone Number as a Map
//Create a Dart function named getPhoneNumber that makes an HTTPS request to the Random User API, retrieves a random user's data, and returns their phone number as a map with the key "phoneNumber".
import 'dart:convert';

import 'package:http/http.dart' as http;

getPhoneNumber() async {
  String url = 'https://randomuser.me/api/';
  Uri uri = Uri.parse(url);

  http.Response response = await http.get(uri);

  Map m = jsonDecode(response.body);
  Map n = {};
  n["phone"] = m["results"][0]['phone'];

  return n;
}

void main() async {
  Map a = await getPhoneNumber();

  print(a);
}
