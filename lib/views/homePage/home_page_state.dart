import 'package:flutter/material.dart';
import 'package:my_fairfield_library/views/menu/menu_drawer.dart';
import 'home_page.dart';

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Fairfield Library"),
      ),
      drawer: MenuDrawer(context).get(),
    );
  }
}
