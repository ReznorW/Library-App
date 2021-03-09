import 'package:flutter/material.dart';

class MapPage {
  Widget _page;

  MapPage(BuildContext context) {
    _page = _createPage(context);
  }

  Widget _createPage(BuildContext context) {
    return Center();
  }

  Widget get() {
    return _page;
  }
}
