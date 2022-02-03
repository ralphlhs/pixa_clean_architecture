/// id : 256261
/// pageURL : "https://pixabay.com/photos/apple-books-still-life-fruit-food-256261/"
/// type : "photo"
/// tags : "apple, books, still life"
/// previewURL : "https://cdn.pixabay.com/photo/2014/02/01/17/28/apple-256261_150.jpg"
/// previewWidth : 150
/// previewHeight : 99
/// webformatURL : "https://pixabay.com/get/g11b3d1a42f74045cb2b15293b7716d867c0736e7011c64a52cbc70342ca578773fde0fc0acd7681f559bcd10a7c21d15_640.jpg"
/// webformatWidth : 640
/// webformatHeight : 423
/// largeImageURL : "https://pixabay.com/get/g32f64a159f4c1122d6419d1d8a172e76d940e9e402ef9a758b2b4f05034bba342616c2ed7193a481bbc45bc9b0e3baa71b815bd44b489de849003585e5d35279_1280.jpg"
/// imageWidth : 4928
/// imageHeight : 3264
/// imageSize : 2987083
/// views : 389708
/// downloads : 184140
/// collections : 3404
/// likes : 969
/// comments : 218
/// user_id : 143740
/// user : "jarmoluk"
/// userImageURL : "https://cdn.pixabay.com/user/2019/09/18/07-14-26-24_250x250.jpg"

class Photos {
  Photos({
      int? id,
      String? pageURL,
      String? type,
      String? tags,
      String? previewURL,
      int? previewWidth,
      int? previewHeight,
      String? webformatURL,
      int? webformatWidth,
      int? webformatHeight,
      String? largeImageURL,
      int? imageWidth,
      int? imageHeight,
      int? imageSize,
      int? views,
      int? downloads,
      int? collections,
      int? likes,
      int? comments,
      int? userId,
      String? user,
      String? userImageURL,}){
    _id = id;
    _pageURL = pageURL;
    _type = type;
    _tags = tags;
    _previewURL = previewURL;
    _previewWidth = previewWidth;
    _previewHeight = previewHeight;
    _webformatURL = webformatURL;
    _webformatWidth = webformatWidth;
    _webformatHeight = webformatHeight;
    _largeImageURL = largeImageURL;
    _imageWidth = imageWidth;
    _imageHeight = imageHeight;
    _imageSize = imageSize;
    _views = views;
    _downloads = downloads;
    _collections = collections;
    _likes = likes;
    _comments = comments;
    _userId = userId;
    _user = user;
    _userImageURL = userImageURL;
}

  Photos.fromJson(dynamic json) {
    _id = json['id'];
    _pageURL = json['pageURL'];
    _type = json['type'];
    _tags = json['tags'];
    _previewURL = json['previewURL'];
    _previewWidth = json['previewWidth'];
    _previewHeight = json['previewHeight'];
    _webformatURL = json['webformatURL'];
    _webformatWidth = json['webformatWidth'];
    _webformatHeight = json['webformatHeight'];
    _largeImageURL = json['largeImageURL'];
    _imageWidth = json['imageWidth'];
    _imageHeight = json['imageHeight'];
    _imageSize = json['imageSize'];
    _views = json['views'];
    _downloads = json['downloads'];
    _collections = json['collections'];
    _likes = json['likes'];
    _comments = json['comments'];
    _userId = json['user_id'];
    _user = json['user'];
    _userImageURL = json['userImageURL'];
  }
  int? _id;
  String? _pageURL;
  String? _type;
  String? _tags;
  String? _previewURL;
  int? _previewWidth;
  int? _previewHeight;
  String? _webformatURL;
  int? _webformatWidth;
  int? _webformatHeight;
  String? _largeImageURL;
  int? _imageWidth;
  int? _imageHeight;
  int? _imageSize;
  int? _views;
  int? _downloads;
  int? _collections;
  int? _likes;
  int? _comments;
  int? _userId;
  String? _user;
  String? _userImageURL;

  int? get id => _id;
  String? get pageURL => _pageURL;
  String? get type => _type;
  String? get tags => _tags;
  String? get previewURL => _previewURL;
  int? get previewWidth => _previewWidth;
  int? get previewHeight => _previewHeight;
  String? get webformatURL => _webformatURL;
  int? get webformatWidth => _webformatWidth;
  int? get webformatHeight => _webformatHeight;
  String? get largeImageURL => _largeImageURL;
  int? get imageWidth => _imageWidth;
  int? get imageHeight => _imageHeight;
  int? get imageSize => _imageSize;
  int? get views => _views;
  int? get downloads => _downloads;
  int? get collections => _collections;
  int? get likes => _likes;
  int? get comments => _comments;
  int? get userId => _userId;
  String? get user => _user;
  String? get userImageURL => _userImageURL;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['pageURL'] = _pageURL;
    map['type'] = _type;
    map['tags'] = _tags;
    map['previewURL'] = _previewURL;
    map['previewWidth'] = _previewWidth;
    map['previewHeight'] = _previewHeight;
    map['webformatURL'] = _webformatURL;
    map['webformatWidth'] = _webformatWidth;
    map['webformatHeight'] = _webformatHeight;
    map['largeImageURL'] = _largeImageURL;
    map['imageWidth'] = _imageWidth;
    map['imageHeight'] = _imageHeight;
    map['imageSize'] = _imageSize;
    map['views'] = _views;
    map['downloads'] = _downloads;
    map['collections'] = _collections;
    map['likes'] = _likes;
    map['comments'] = _comments;
    map['user_id'] = _userId;
    map['user'] = _user;
    map['userImageURL'] = _userImageURL;
    return map;
  }

}