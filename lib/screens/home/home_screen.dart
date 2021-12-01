import 'package:flutter/material.dart';
import 'package:flutter_project_1/model/newspaper.dart';
import 'package:flutter_project_1/screens/webview/webview_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("All BD Newspapers"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, WebViewScreen.routeName,
                    arguments: NewsPaper.newspapers[index]);
              },
              child: Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blue)),
                child: Image(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    image: AssetImage("asset/images/" +
                        NewsPaper.newspapers[index].imageName)),
              ),
            );
          },
          itemCount: NewsPaper.newspapers.length,
        ));
  }
}
