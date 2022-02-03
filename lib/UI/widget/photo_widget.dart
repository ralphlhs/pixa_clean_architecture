import 'package:flutter/material.dart';
import 'package:pixa_clean_architecture/data/pixabay_api.dart';
import 'package:pixa_clean_architecture/model/photos.dart';

class PhotoWidget extends StatelessWidget{
  final int? index;
  final List<Photos> photo;
  final PixabayApi? pixabayApi;
  const PhotoWidget({Key? key, this.index, required this.photo, this.pixabayApi}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        borderRadius:
        const BorderRadius.all(Radius.circular(20.0)),
        image: DecorationImage(
          image: NetworkImage(photo[index!].webformatURL!),
          fit: BoxFit.cover,
        ),
      ),
      child: Text('$index'+ pixabayApi!.basic_uri),
    );
  }
}