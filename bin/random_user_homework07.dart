//Task 7: Retrieve Random User's Profile Picture as a Map
//Create a Dart function named getProfilePicture that makes an HTTPS request to the Random User API, retrieves a random user's data, and returns their profile picture URL as a map with the key "profilePicture".
import 'dart:convert';

import 'package:http/http.dart' as http;

getProfilePicture() async {
  String url = 'https://randomuser.me/api/';
  Uri uri = Uri.parse(url);

  http.Response response = await http.get(uri);

  Map m = jsonDecode(response.body);
  Map n = {};
  n["picture"] = m["results"][0]['picture'];

  return n;
}

void main() async {
  Map a = await getProfilePicture();

  print(a);
}
