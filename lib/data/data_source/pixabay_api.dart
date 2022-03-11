import 'dart:convert';

import 'package:http/http.dart' as http;

class PixabayApi {
  final http.Client client;

  PixabayApi(this.client);

  final basic_uri = 'https://pixabay.com/api/';
  final pixa_key = '17828481-17c071c7f8eadf406822fada3';
  // String searchedword = 'apple';

  String uri(String a, String b, String c) {
    return '$a?key=$b&q=$c&image_type=photo';
  }

  Future<Iterable> fetch(String query) async {
    final response = await client.get(Uri.parse(uri(basic_uri, pixa_key, query)));
    Map<String, dynamic> j = jsonDecode(response.body);
    Iterable jj = j["hits"];
    return jj;
  }
}