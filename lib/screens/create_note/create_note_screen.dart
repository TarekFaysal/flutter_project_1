import 'package:flutter/material.dart';

class CreateNoteScreen extends StatefulWidget {
  static const routeName = "/createNote";
  const CreateNoteScreen({Key key}) : super(key: key);

  @override
  State<CreateNoteScreen> createState() => _CreateNoteScreenState();
}

class _CreateNoteScreenState extends State<CreateNoteScreen> {
  TextEditingController titleEditingController = TextEditingController();
  TextEditingController descriptionEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create Note"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value.isNotEmpty) {
                      return null;
                    } else {
                      return "Please enter title";
                    }
                  },
                  controller: titleEditingController,
                  decoration:
                      InputDecoration(hintText: "Title", labelText: "Title *"),
                ),
                TextFormField(
                  validator: (value) {
                    if (value.isNotEmpty) {
                      return null;
                    } else {
                      return "Please enter description";
                    }
                  },
                  controller: descriptionEditingController,
                  decoration: InputDecoration(
                      hintText: "Dexcription", labelText: "Description *"),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        String title = titleEditingController.text;
                        String description = descriptionEditingController.text;
                        print(title + description);
                      }
                    },
                    child: Text("Create"))
              ],
            ),
          ),
        ));
  }
}
