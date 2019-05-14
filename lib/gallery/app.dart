import 'package:flutter/material.dart';
import 'package:gallery_cn/demo/shrine/model/app_state_model.dart';
import 'package:scoped_model/scoped_model.dart';

class GalleryApp extends StatefulWidget {
  const GalleryApp({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _GalleryAppState();
}

class _GalleryAppState extends State<GalleryApp> {
  AppStateModel model;

  @override
  void initState() {
    super.initState();
    model = AppStateModel()..loadProducts();
  }

  @override
  Widget build(BuildContext context) {
    Widget home = Text("123");

    return ScopedModel<AppStateModel>(
      model: model,
      child: MaterialApp(
        title: 'Flutter Gallery',
        color: Colors.grey,
        builder: (BuildContext context, Widget child) {},
        home: home,
      ),
    );
  }
}
