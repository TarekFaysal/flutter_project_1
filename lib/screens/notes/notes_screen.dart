import 'package:flutter/material.dart';
import 'package:flutter_project_1/model/note.dart';
import 'package:flutter_project_1/screens/create_note/create_note_screen.dart';
import 'package:flutter_project_1/screens/note_details/note_details_screen.dart';
import 'package:flutter_project_1/theme/custom_theme.dart';

class NotesScreen extends StatelessWidget {
  static const routeName = "/notes";
  const NotesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Notes"),
        actions: [
          IconButton(
              onPressed: () {
                currentTheme.toggleTheme();
              },
              icon: currentTheme.currentTheme == ThemeMode.dark
                  ? Icon(Icons.light_mode)
                  : Icon(Icons.dark_mode))
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.pushNamed(context, NoteDetailsScreen.routeName,
                  arguments: Note.notes[index]);
            },
            title: Text(
              Note.notes[index].title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            subtitle: Text(
              Note.notes[index].description,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          );
        },
        itemCount: Note.notes.length,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, CreateNoteScreen.routeName);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
