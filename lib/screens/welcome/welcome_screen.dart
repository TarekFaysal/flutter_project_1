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
          child: Column(children: [
            Row(children: [
              Container(
                margin: EdgeInsets.all(30),
                color: Colors.green,
                padding: EdgeInsets.all(30),
                child: Text("Dhaka " + counter.toString()),
              ),
              Container(
                margin: EdgeInsets.all(20),
                //color: Colors.red,
                padding: EdgeInsets.all(30),
                child: TextButton(
                  child: Text(
                    "text button",
                    style: TextStyle(color: myColor, fontSize: 20),
                  ),
                  onPressed: () {
                    setState(() {
                      counter = counter + 1;
                      if (myColor == Colors.red) {
                        myColor = Colors.blue;
                      } else {
                        myColor = Colors.red;
                      }
                    });
                  },
                ),
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
                //color: Colors.blue,
                padding: EdgeInsets.all(30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue)),
                  child: Text(
                    "Elevated Button",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: null,
                ),
              ),
            ]),
          ]),
        ));
  }
}
