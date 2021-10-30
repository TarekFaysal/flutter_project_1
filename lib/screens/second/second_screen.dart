import 'package:flutter/material.dart';
import 'package:flutter_project_1/model/user.dart';
import 'package:flutter_project_1/screens/third/third_screen.dart';

class SecondScreen extends StatelessWidget {
  static const routeName = "/second";
  const SecondScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User user = ModalRoute.of(context).settings.arguments as User;
    return Scaffold(
      appBar: AppBar(
        title: Text(user.firstName),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(children: [
          Text("My name is " + user.lastName),
          ElevatedButton(
            child: Text("Go to third screen"),
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ThirdScreen()));
            },
          ),
        ]),
      ),
    );
  }
}
