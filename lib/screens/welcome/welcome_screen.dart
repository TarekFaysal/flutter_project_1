import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:
              Text("Dhaka, Bangladesh", style: TextStyle(color: Colors.green)),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                onPressed: null),
          ],
          leading: IconButton(
            onPressed: null,
            icon: Icon(Icons.arrow_back, color: Colors.blue),
          ),
        ),
        body: Container(
          width: 350,
          height: 350,
          color: Colors.yellow,
          child: Column(children: [
            Row(children: [
              Container(
                margin: EdgeInsets.all(20),
                color: Colors.green,
                padding: EdgeInsets.all(30),
                child: Text("Dhaka"),
              ),
              Container(
                margin: EdgeInsets.all(20),
                color: Colors.red,
                padding: EdgeInsets.all(30),
                child: Text("Barisal"),
              ),
            ]),
            Row(children: [
              Container(
                margin: EdgeInsets.all(20),
                color: Colors.red,
                padding: EdgeInsets.all(30),
                child: Text("Sylhet"),
              ),
              Container(
                margin: EdgeInsets.all(20),
                color: Colors.blue,
                padding: EdgeInsets.all(30),
                child: Text("Mymensingh"),
              ),
            ]),
          ]),
        ));
  }
}
