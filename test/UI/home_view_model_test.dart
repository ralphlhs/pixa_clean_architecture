import 'package:flutter_test/flutter_test.dart';
import 'package:pixa_clean_architecture/UI/home_view_model.dart';
import 'package:pixa_clean_architecture/data/api.dart';
import 'package:pixa_clean_architecture/model/photo.dart';

void main() {
  test('Stream이 잘 동작되어야 한다.', () async {
    final viewModel = HomeViewModel(PixabayApi());
    await viewModel.fetch('apple');
    await viewModel.fetch('apple');

    expect(
      viewModel.photostream,
      emitsInOrder([
        isA<List<Photos>>(),
        isA<List<Photos>>(),
      ]),
    );
  });
}
