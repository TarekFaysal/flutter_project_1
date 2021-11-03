import 'package:flutter/material.dart';
import 'package:flutter_project_1/model/note.dart';
import 'package:flutter_project_1/screens/note_details/note_details_screen.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Notes"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.pushNamed(context, NoteDetailsScreen.routeName,
                    arguments: Note.notes[index]);
              },
              title: Text(Note.notes[index].title),
              subtitle: Text(
                Note.notes[index].description,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            );
          },
          itemCount: Note.notes.length,
        ));
  }
}
