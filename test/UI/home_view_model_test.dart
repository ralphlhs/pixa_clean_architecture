import 'package:flutter_test/flutter_test.dart';
import 'package:pixa_clean_architecture/UI/home_view_model.dart';
import 'package:pixa_clean_architecture/data/photos_api_repository.dart';
import 'package:pixa_clean_architecture/data/pixabay_api.dart';
import 'package:pixa_clean_architecture/model/photos.dart';

void main() {
  test('Stream이 잘 동작되어야 한다.', () async {
    final viewModel = HomeViewModel(FakePhotosApiRepository());
    await viewModel.fetch('apple');
    await viewModel.fetch('photo');
    final result = fakeJson.map((e) => Photos.fromJson(e)).toList();

    expect(
      viewModel.photostream,
      emitsInOrder([
        equals([]),
        equals(result),
        equals(result),
        // isA<List<Photos>>(),
      ]),
    );
  });
}

class FakePhotosApiRepository extends PhotosApiRepository {
  @override
  Future<List<Photos>> fetch(String query) async {
    Future.delayed(const Duration(microseconds: 500));
    return fakeJson.map((e) => Photos.fromJson(e)).toList();
  }
}

List<Map<String, dynamic>> fakeJson = [
  {
    "id": 256261,
    "pageURL":
        "https://pixabay.com/photos/apple-books-still-life-fruit-food-256261/",
    "type": "photo",
    "tags": "apple, books, still life",
    "previewURL":
        "https://cdn.pixabay.com/photo/2014/02/01/17/28/apple-256261_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g5666fecc19368abe34534bc3689e03f0cd438f8f1ef3381efe63709ecd57b7b085c2486515b64c09b52859f88e0d0776_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 423,
    "largeImageURL":
        "https://pixabay.com/get/g7c3e37f915b6034460e146dec3a7db67c74c8dcca5a31a9cfd4ecd0643787ca470ca6ebff2ae9a7a849a097da574ad3ea63c929fc39a7ec9a85ecacc37c7d0ce_1280.jpg",
    "imageWidth": 4928,
    "imageHeight": 3264,
    "imageSize": 2987083,
    "views": 398696,
    "downloads": 190535,
    "collections": 3706,
    "likes": 978,
    "comments": 220,
    "user_id": 143740,
    "user": "jarmoluk",
    "userImageURL":
        "https://cdn.pixabay.com/user/2019/09/18/07-14-26-24_250x250.jpg"
  },
  {
    "id": 1868496,
    "pageURL":
        "https://pixabay.com/photos/apple-computer-desk-workspace-1868496/",
    "type": "photo",
    "tags": "apple, computer, desk",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/11/29/08/41/apple-1868496_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g4b34bdaffef832178a23b0ff7e0f70b5b12ae190e69e6ecdc9a952e924a784c56d4b509ba68523d5ccddced8fa89db098ef435c74c59e174270a525ec61aae1f_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/g0292efef98300a03c8449416b657f54bdf6dca5cff5ccf8155ebab8c22cab7ef0f18c7e8e0976a842c4275fe1bf6ecbd11a357791ab31685e5b63597eb55258f_1280.jpg",
    "imageWidth": 5184,
    "imageHeight": 3456,
    "imageSize": 2735519,
    "views": 512713,
    "downloads": 377355,
    "collections": 5962,
    "likes": 865,
    "comments": 229,
    "user_id": 2286921,
    "user": "Pexels",
    "userImageURL":
        "https://cdn.pixabay.com/user/2016/03/26/22-06-36-459_250x250.jpg"
  },
  {
    "id": 1122537,
    "pageURL":
        "https://pixabay.com/photos/apple-water-droplets-fruit-moist-1122537/",
    "type": "photo",
    "tags": "apple, water droplets, fruit",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/01/05/13/58/apple-1122537_150.jpg",
    "previewWidth": 150,
    "previewHeight": 95,
    "webformatURL":
        "https://pixabay.com/get/gf468f674d56c28b8350270057e542530fb7961c52d22166ddb661c12a46573e338aabf29a1d1faf8fa90fa1607a74e8d4529e28d5e45f9a246d25872f9edbd81_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 409,
    "largeImageURL":
        "https://pixabay.com/get/g24148908cd0d7a75337efe7a99cdff1f28767a12c6eeaf28395cba782914ed2842bb01879b434ce3ee86f0e46e174ff139bb3e9305023a58cca9e35bdda3ed63_1280.jpg",
    "imageWidth": 4752,
    "imageHeight": 3044,
    "imageSize": 5213632,
    "views": 240909,
    "downloads": 135686,
    "collections": 3375,
    "likes": 1019,
    "comments": 159,
    "user_id": 1445608,
    "user": "mploscar",
    "userImageURL":
        "https://cdn.pixabay.com/user/2016/01/05/14-08-20-943_250x250.jpg"
  },
  {
    "id": 1873078,
    "pageURL": "https://pixabay.com/photos/apples-orchard-apple-trees-1873078/",
    "type": "photo",
    "tags": "apples, orchard, apple trees",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/11/30/15/23/apples-1873078_150.jpg",
    "previewWidth": 150,
    "previewHeight": 95,
    "webformatURL":
        "https://pixabay.com/get/g781b18cbf2456fd008551263765e3b6c573038022cc99d7d357ba4bd18306be20936f5f11230e9de2bc2f646025d22b70320b1c2a2dd0046bbc7ff15434bfc77_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 408,
    "largeImageURL":
        "https://pixabay.com/get/gccacd39167314dbc65ee532c97b8c05e4bad41766ac28d815843028be3f74de0548e2cb0e4097c261fb91ef8c1e072896bbeee1d05d2bcb50fb4041b7cb1eaf2_1280.jpg",
    "imageWidth": 3212,
    "imageHeight": 2051,
    "imageSize": 2581012,
    "views": 317027,
    "downloads": 172150,
    "collections": 3887,
    "likes": 1008,
    "comments": 132,
    "user_id": 3890388,
    "user": "lumix2004",
    "userImageURL": ""
  },
  {
    "id": 606761,
    "pageURL": "https://pixabay.com/photos/apple-imac-ipad-workplace-606761/",
    "type": "photo",
    "tags": "apple, imac, ipad",
    "previewURL":
        "https://cdn.pixabay.com/photo/2015/01/21/14/14/apple-606761_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g4076c40e1bc42905e5fd6949b09b3095cb202d76418e0cd24b0e204643a526c4a5079c561a39e57119a93fffd9651bd6_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 425,
    "largeImageURL":
        "https://pixabay.com/get/g66185d0fd09a04fdfe9e433b8225c885571c7c8592cacdf36d512bfc19986f15b3b41810e3e678685b0ba0f61849185c479d0f12bc5a88eb6d60d35b374acecd_1280.jpg",
    "imageWidth": 4209,
    "imageHeight": 2796,
    "imageSize": 1649126,
    "views": 352321,
    "downloads": 188146,
    "collections": 2435,
    "likes": 501,
    "comments": 105,
    "user_id": 663163,
    "user": "Firmbee",
    "userImageURL":
        "https://cdn.pixabay.com/user/2020/11/25/09-38-28-431_250x250.png"
  },
];
