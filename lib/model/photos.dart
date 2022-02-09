// import 'package:json_annotation/json_annotation.dart';
//
// part 'photos.g.dart';
//
// @JsonSerializable()
// class Photos {
//   final int id;
//   final String tags;
//   final String webformatURL;
//
//   Photos({required this.id, required this.tags, required this.webformatURL});
//
//   factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);
//
//   Map<String, dynamic> toJson() => _$PhotosToJson(this);
// }

import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed/builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mockito/mockito.dart';

part 'photos.freezed.dart';

part 'photos.g.dart';

@freezed
class Photos with _$Photos {
  factory Photos({
    required int id,
    required String pageURL,
    required String type,
    required String tags,
    required String previewUrl,
    required int previewWidth,
    required int previewHeight,
    required String webformatURL,
    required int webformatWidth,
    required int webformatHeight,
    required String largeImageURL,
    required int imageWidth,
    required int imageHeight,
    required int imageSize,
    required int views,
    required int downloads,
    required int collections,
    required int likes,
    required int comments,
    required int userId,
    required String user,
    required String userImageURL,
  }) = _Photos;

  factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);
}
//
//
//
//
// class Photos {
//   Photos({
//       this.id,
//       this.pageURL,
//       this.type,
//       this.tags,
//       this.previewURL,
//       this.previewWidth,
//       this.previewHeight,
//       this.webformatURL,
//       this.webformatWidth,
//       this.webformatHeight,
//       this.largeImageURL,
//       this.imageWidth,
//       this.imageHeight,
//       this.imageSize,
//       this.views,
//       this.downloads,
//       this.collections,
//       this.likes,
//       this.comments,
//       this.userId,
//       this.user,
//       this.userImageURL,});
//
//   Photos.fromJson(dynamic json) {
//     id = json['id'];
//     pageURL = json['pageURL'];
//     type = json['type'];
//     tags = json['tags'];
//     previewURL = json['previewURL'];
//     previewWidth = json['previewWidth'];
//     previewHeight = json['previewHeight'];
//     webformatURL = json['webformatURL'];
//     webformatWidth = json['webformatWidth'];
//     webformatHeight = json['webformatHeight'];
//     largeImageURL = json['largeImageURL'];
//     imageWidth = json['imageWidth'];
//     imageHeight = json['imageHeight'];
//     imageSize = json['imageSize'];
//     views = json['views'];
//     downloads = json['downloads'];
//     collections = json['collections'];
//     likes = json['likes'];
//     comments = json['comments'];
//     userId = json['user_id'];
//     user = json['user'];
//     userImageURL = json['userImageURL'];
//   }
//   int? id;
//   String? pageURL;
//   String? type;
//   String? tags;
//   String? previewURL;
//   int? previewWidth;
//   int? previewHeight;
//   String? webformatURL;
//   int? webformatWidth;
//   int? webformatHeight;
//   String? largeImageURL;
//   int? imageWidth;
//   int? imageHeight;
//   int? imageSize;
//   int? views;
//   int? downloads;
//   int? collections;
//   int? likes;
//   int? comments;
//   int? userId;
//   String? user;
//   String? userImageURL;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = id;
//     map['pageURL'] = pageURL;
//     map['type'] = type;
//     map['tags'] = tags;
//     map['previewURL'] = previewURL;
//     map['previewWidth'] = previewWidth;
//     map['previewHeight'] = previewHeight;
//     map['webformatURL'] = webformatURL;
//     map['webformatWidth'] = webformatWidth;
//     map['webformatHeight'] = webformatHeight;
//     map['largeImageURL'] = largeImageURL;
//     map['imageWidth'] = imageWidth;
//     map['imageHeight'] = imageHeight;
//     map['imageSize'] = imageSize;
//     map['views'] = views;
//     map['downloads'] = downloads;
//     map['collections'] = collections;
//     map['likes'] = likes;
//     map['comments'] = comments;
//     map['user_id'] = userId;
//     map['user'] = user;
//     map['userImageURL'] = userImageURL;
//     return map;
//   }
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is Photos && runtimeType == other.runtimeType && id == other.id;
//
//   @override
//   int get hashCode => id.hashCode;
//
//   @override
//   String toString() {
//     return 'Photos{id: $id}';
//   }
// }

