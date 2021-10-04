import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int counter = 0;
  Color myColor = Colors.red;

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
          color: Colors.yellow,
          child: ListView(children: [
            ListTile(
              dense: true,
              onTap: () {},
              tileColor: Colors.blue,
              leading: CircleAvatar(
                backgroundImage: AssetImage("asset/images/flower.jpeg"),
              ),
              title: Text("This is the title"),
              subtitle: Text("This is the subtitle"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              enabled: false,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(110.0)),
              onTap: () {},
              //  tileColor: Colors.red,
              leading: Icon(Icons.favorite),
              title: Text("This is the title"),
              subtitle: Text("This is the subtitle"),
              trailing: Icon(Icons.access_alarm_rounded),
            ),
          ]),
        ));
  }
}
