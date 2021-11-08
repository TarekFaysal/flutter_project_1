import 'package:flutter/material.dart';
import 'package:flutter_project_1/model/note.dart';
import 'package:flutter_project_1/screens/notes/notes_screen.dart';

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
                  style: Theme.of(context).textTheme.bodyText1,
                  validator: (value) {
                    if (value.isNotEmpty) {
                      return null;
                    } else {
                      return "Please enter title";
                    }
                  },
                  controller: titleEditingController,
                  decoration: InputDecoration(
                    hintText: "Title",
                    labelText: "Title *",
                    hintStyle: Theme.of(context).textTheme.bodyText2,
                    labelStyle: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.bodyText1,
                  validator: (value) {
                    if (value.isNotEmpty) {
                      return null;
                    } else {
                      return "Please enter description";
                    }
                  },
                  controller: descriptionEditingController,
                  decoration: InputDecoration(
                    hintText: "Description",
                    labelText: "Description *",
                    hintStyle: Theme.of(context).textTheme.bodyText2,
                    labelStyle: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        String title = titleEditingController.text;
                        String description = descriptionEditingController.text;
                        print(title + description);

                        Note note = Note(title, description);
                        Note.notes.add(note);

                        Navigator.pop(context);
                        Navigator.pushReplacementNamed(
                            context, NotesScreen.routeName);
                      }
                    },
                    child: Text("Create"))
              ],
            ),
          ),
        ));
  }
}
