import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:pixa_clean_architecture/data/photos_api_repository.dart';
import 'package:pixa_clean_architecture/model/photos.dart';


class PixabayApi implements PhotosApiRepository{

  final basic_uri = 'https://pixabay.com/api/';
  final pixa_key = '17828481-17c071c7f8eadf406822fada3';
  // String searchedword = 'apple';

  String uri(String a, String b, String c) {
    return '$a?key=$b&q=$c&image_type=photo';
  }

  @override
  Future<List<Photos>> fetch(String query, {http.Client? client}) async {
    if(client == null){
      client = http.Client();
    }
    final response = await client.get(Uri.parse(uri(basic_uri, pixa_key, query)));
    Map<String, dynamic> j = jsonDecode(response.body);
    Iterable jj = j["hits"];
    return jj.map((e) => Photos.fromJson(e)).toList();
  }
}

