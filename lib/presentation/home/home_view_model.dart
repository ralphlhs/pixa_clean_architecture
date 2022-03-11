import 'dart:async';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixa_clean_architecture/domain/repository/photos_api_repository.dart';
import 'package:pixa_clean_architecture/domain/model/photos.dart';

class HomeViewModel with ChangeNotifier{

  final PhotosApiRepository repository;

  HomeViewModel(this.repository);

  List<Photos> _photo = [];
  UnmodifiableListView<Photos> get photos => UnmodifiableListView(_photo);

  Future<void> fetch(String query) async{
    final result = await repository.fetch(query);
    _photo = result;
    notifyListeners();
  }
}


// class HomeViewModel{
//   // final PixabayApi api;// 처음엔 이걸받았음.
//   final PhotosApiRepository repository;
//
//   HomeViewModel(this.repository);
//
//   final _photoStreamController = StreamController<List<Photos>>()..add([]);
//   Stream<List<Photos>> get photostream => _photoStreamController.stream;
//
//   Future<void> fetch(String query) async{
//     final result = await repository.fetch(query);
//     _photoStreamController.add(result);
//   }
// }

class StringView{
  final String string;

  StringView(this.string);

}
