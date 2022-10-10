import 'dart:convert';

import 'package:flutter_http/sample_api.dart';
import 'package:http/http.dart' as http;

class HTTPHelper {
  var client = http.Client();

  static final GET_COURSES = "https://jsonplaceholder.typicode.com/posts";

  Future<List<SampleApi>> getCourses() async {
    var uri = Uri.parse(GET_COURSES);
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      print(response.body);
      List<dynamic> body = jsonDecode(response.body);
      List<SampleApi> fakeApi = body
          .map(
            (dynamic item) => SampleApi.fromJson(item),
          )
          .toList();
      return fakeApi;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}
