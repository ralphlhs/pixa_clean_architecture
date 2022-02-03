import 'package:pixa_clean_architecture/model/photos.dart';

abstract class PhotosApiRepository{
  Future<List<Photos>> fetch(String query);
}