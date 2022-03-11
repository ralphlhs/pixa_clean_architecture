import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pixa_clean_architecture/data/data_source/pixabay_api.dart';
import 'package:pixa_clean_architecture/domain/repository/photos_api_repository.dart';
import 'package:pixa_clean_architecture/domain/model/photos.dart';

class PhotosApiRepositoryImpl implements PhotosApiRepository{
  PixabayApi api;

  PhotosApiRepositoryImpl(this.api);

  // final api = PixabayApi(http.Client());

  @override
  Future<List<Photos>> fetch(String query) async {
    // client ??= http.Client();
    // pixabayApi로 빠짐.
    // final response = await client.get(Uri.parse(api.uri(api.basic_uri, api.pixa_key, query)));
    // Map<String, dynamic> j = jsonDecode(response.body);
    // Iterable jj = j["hits"];

    final result = await api.fetch(query);
    return result.map((e) => Photos.fromJson(e)).toList();
  }
}

