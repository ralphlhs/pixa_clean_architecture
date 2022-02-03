import 'dart:async';
import 'package:pixa_clean_architecture/data/photos_api_repository.dart';
import 'package:pixa_clean_architecture/model/photos.dart';

class HomeViewModel{
  // final PixabayApi api;// 처음엔 이걸받았음.
  final PhotosApiRepository repository;

  HomeViewModel(this.repository);

  final _photoStreamController = StreamController<List<Photos>>()..add([]);
  Stream<List<Photos>> get photostream => _photoStreamController.stream;

  Future<void> fetch(String query) async{
    final result = await repository.fetch(query);
    _photoStreamController.add(result);
  }
}

class StringView{
  final String string;

  StringView(this.string);

}
