import 'package:flutter/material.dart';

class CameraPage {
  Widget _page;

  CameraPage(BuildContext context) {
    _page = _createPage(context);
  }

  Widget _createPage(BuildContext context) {
    return Center();
  }

  Widget get() {
    return _page;
  }
}
