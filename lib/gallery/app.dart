import 'package:flutter/material.dart';
import 'package:gallery_cn/demo/shrine/model/app_state_model.dart';
import 'package:scoped_model/scoped_model.dart';

class GalleryApp extends StatefulWidget {
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
    return ScopedModel();
  }
}
