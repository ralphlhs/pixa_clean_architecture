import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pixa_clean_architecture/data/data_source/pixabay_api.dart';
import 'package:pixa_clean_architecture/data/repository/photo_api_repository_impl.dart';
import 'package:pixa_clean_architecture/domain/model/photos.dart';

class PhotoWidget extends StatelessWidget {
  final int? index;
  final List<Photos> photo;
  final PixabayApi? pixabayApi;

  const PhotoWidget(
      {Key? key, this.index, required this.photo, this.pixabayApi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        image: DecorationImage(
          image: NetworkImage(photo[index!].previewURL),
          fit: BoxFit.cover,
        ),
      ),
      child: Text('$index' + pixabayApi!.basic_uri),
    );
  }
}

class PhotoDetailPage extends StatelessWidget {
  final int? index;
  final List<Photos> photo;

  const PhotoDetailPage({Key? key, this.index, required this.photo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(photo[index!].tags),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: photo[index!].webformatURL,
              child: Image.network(
                photo[index!].webformatURL,
                fit: BoxFit.cover,
              ),
            ),
            Hero(
              tag: photo[index!].tags,
              child: Text(
                photo[index!].tags,
                style: const TextStyle(fontSize: 15),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pop(context);
                Navigator.pop<List<Photos>>(context, photo);
              },
              child: const Text('값 넘기기'),
            ),
          ],
        ),
      ),
    );
  }
}
