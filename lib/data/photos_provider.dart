import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pixa_clean_architecture/UI/home_view_model.dart';
import 'package:pixa_clean_architecture/data/pixabay_api.dart';
import 'package:pixa_clean_architecture/model/photos.dart';

class PhotoProvider extends InheritedWidget {
  final HomeViewModel viewModel;
  final StringView? string;
  final String? a;
  const PhotoProvider({Key? key, required Widget child, required this.viewModel, this.a, this.string})
      : super(key: key, child: child);

  static PhotoProvider of(BuildContext context) {
    final PhotoProvider? result =
        context.dependOnInheritedWidgetOfExactType<PhotoProvider>();
    assert(result != null, 'No PixabayApi found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(PhotoProvider oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }
}
