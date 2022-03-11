import 'package:flutter/material.dart';
import 'package:pixa_clean_architecture/presentation/home/components/photo_widget.dart';
import 'package:pixa_clean_architecture/data/data_source/pixabay_api.dart';
import 'package:pixa_clean_architecture/data/repository/photo_api_repository_impl.dart';
import 'package:pixa_clean_architecture/data/photos_provider.dart';
import 'package:pixa_clean_architecture/main.dart';
import 'package:pixa_clean_architecture/domain/model/photos.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import 'home_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<Photos>? _photo = [];
  final _searchword = TextEditingController();

  @override
  void dispose() {
    _searchword.dispose();
    super.dispose();
  }

  @override
  void initState() {
    init('green');
    super.initState();
  }

  Future init(String a) async {
    // final pho = await photoprovider.api.fetch(_searchword.text);
    // setState(() {
    //   _photo = pho;

    // });
  }

  @override
  Widget build(BuildContext context) {
    // final viewModelString = PhotoProvider.stst('깅기나니').a;
    // final viewModel = PhotoProvider.of(context).viewModel;
    final viewModel = context.watch<HomeViewModel>();
    // final stringModel = PhotoProvider.of(context).string.toString();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '픽사베이 사진들',
        ),
        backgroundColor: Colors.cyan,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              // onTap: () {},
              controller: _searchword,
              // style:,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                suffixIcon: IconButton(
                  onPressed: () async {
                    // 이렇게 할수도 있다. context.read<HomeViewModel>().fetch(_searchword.text);
                    viewModel.fetch(_searchword.text);
                    // final pho = await photoprovider.api.fetch(_searchword.text);
                    // setState(() {_photo = pho;});
                  },
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
          ),
          const Text('viewModelString'),
          //       StreamBuilder<List<Photos>>(
          //           stream: viewModel.photostream,
          //           builder: (context, snapshot) {
          //             if (!snapshot.hasData) {
          //               return const CircularProgressIndicator();
          //             }
          //             final photo = snapshot.data!;
          //             return       })
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16.0),
              shrinkWrap: true,
              itemCount: viewModel.photos.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PhotoDetailPage(index: index,
                          photo: viewModel.photos,
                        ),
                      ),
                    );
                  },
                  child: PhotoWidget(
                    photo: viewModel.photos,
                    index: index,
                    pixabayApi: PixabayApi(http.Client()),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Routes {
  Routes._();

  static const String firstRoom = '/firstRoom';
  static const String secondRoom = '/secondRoom';
  static const String bathRoom = '/bathRoom';
  static const String exit = '/exit';

  static final routes = <String, WidgetBuilder>{
    // firstRoom: (BuildContext context) => FirstRoom(),
    // secondRoom: (BuildContext context) => SecondRoom(),
    // bathRoom: (BuildContext context) => BathRoom(),
    exit: (BuildContext context) => Text('adf'),
  };
}
