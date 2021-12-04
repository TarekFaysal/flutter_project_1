import 'package:flutter/material.dart';
import 'package:flutter_project_1/widgets/my_custom_drawer.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = "/welcome";
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Drawer Example"),
            bottom: TabBar(
              tabs: [
                Icon(Icons.face),
                Icon(Icons.ac_unit),
                Icon(Icons.access_alarm)
              ],
            ),
          ),
          endDrawer: MyCustomDrawer(),
          body: TabBarView(
            children: [
              Center(
                child: ElevatedButton(
                  child: Text("Show Snackbar"),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.red,
                        action: SnackBarAction(
                          label: "Undo",
                          onPressed: () {
                            print("undo something");
                          },
                        ),
                        content: Text("list Item 1 was clicked")));
                  },
                ),
              ),
              MyCustomContainer(),
              Container(
                child: Text("This is my 2nd tab content"),
              )
            ],
          )),
    );
  }
}

class MyCustomContainer extends StatelessWidget {
  const MyCustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("This is my 2nd tab content"),
    );
  }
}
