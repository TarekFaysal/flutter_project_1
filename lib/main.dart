import 'package:flutter/material.dart';
import 'package:flutter_project_1/screens/home/home_screen.dart';
import 'package:flutter_project_1/screens/webview/webview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeScreen(),
      routes: {WebViewScreen.routeName: (ctx) => WebViewScreen()},
    );
  }
}
