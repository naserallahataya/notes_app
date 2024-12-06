import 'package:flutter/material.dart';
import 'package:note_app/views/notes_views.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: NotesViews(),
    );
  }
}