//Task 4: Retrieve Random User's Date of Birth as a Map
//Create a Dart function named getDateOfBirth that makes an HTTPS request to the Random User API, retrieves a random user's data, and returns their date of birth as a map with the key "dateOfBirth".
import 'dart:convert';

import 'package:http/http.dart' as http;

getDateOfBirth() async {
  String url = 'https://randomuser.me/api/';
  Uri uri = Uri.parse(url);

  http.Response response = await http.get(uri);

  Map m = jsonDecode(response.body);
  Map n = {};
  n["date"] = m["results"][0]['dob']['date'];

  return n;
}

void main() async {
  Map a = await getDateOfBirth();

  print(a);
}
