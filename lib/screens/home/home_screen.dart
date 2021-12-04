import 'package:flutter/material.dart';
import 'package:flutter_project_1/widgets/my_custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
      drawer: MyCustomDrawer(),
    );
  }
}
