import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<String> names = ["Mohebbullah", "Shakil", "Tarek", "Jihad", "jihad3"];

  List<String> phoneNumbers = [
    "01567883675",
    "01734657837",
    "01837593756",
    "01748572647",
    "01346756788"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          centerTitle: true,
          title:
              Text("Dhaka, Bangladesh", style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    if (names.length < 20) {
                      names.add("Hridoy");
                      phoneNumbers.add("01456767865");
                    }
                  });
                }),
          ],
          leading: IconButton(
            onPressed: () {
              setState(() {
                if (names.length != 0) {
                  names.remove(names.last);
                  phoneNumbers.remove(phoneNumbers.last);
                }
              });
            },
            icon: Icon(Icons.delete, color: Colors.white),
          ),
        ),
        body: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("asset/images/flower.jpeg"),
                ),
                tileColor: (index % 2 == 0) ? Colors.black45 : Colors.black12,
                title: Text(names[index]),
                subtitle: Text(phoneNumbers[index]),
                trailing: Icon(Icons.keyboard_arrow_right),
              );
            }));
  }
}
