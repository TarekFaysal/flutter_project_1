import 'package:flutter/material.dart';
import 'package:flutter_project_1/screens/home/home_screen.dart';
import 'package:flutter_project_1/screens/welcome/welcome_screen.dart';

class MyCustomDrawer extends StatelessWidget {
  const MyCustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(0),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://cdn.wallpapersafari.com/82/28/CKyl8Z.jpg"),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    "Flutter Step-by-Step",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            onTap: () {
              // do whatever you want
              //print("List Item 1 is clicked");

              Navigator.of(context).pushNamed(HomeScreen.routeName);
            },
            title: Text("List Item 1"),
          ),
          ListTile(
            onTap: () {
              // do whatever you want
              print("List Item 2 is clicked");
              Navigator.of(context).pushNamed(WelcomeScreen.routeName);
            },
            title: Text("List Item 2"),
          ),
          ListTile(
            onTap: () {
              // do whatever you want
              print("List Item 3 is clicked");
              Navigator.of(context).pop();
            },
            title: Text("List Item 3"),
          )
        ],
      ),
    );
  }
}
