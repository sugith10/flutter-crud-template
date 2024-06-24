import 'package:flutter_crud/model/note_mode.dart';

final class DataController {
  List<NoteModel> noteList = [
    NoteModel(title: "sugith", subtitle: "sdfhajkhsdhfashdh"),
    NoteModel(title: "Title", subtitle: "sdfhajkhsdhfashdh"),
    NoteModel(title: "Title", subtitle: "sdfhajkhsdhfashdh"),
    NoteModel(title: "Title", subtitle: "sdfhajkhsdhfashdh"),
    NoteModel(title: "Title", subtitle: "sdfhajkhsdhfashdh"),
    NoteModel(title: "Title", subtitle: "sdfhajkhsdhfashdh"),
    NoteModel(title: "Title", subtitle: "sdfhajkhsdhfashdh"),
  ];


  void addNote(NoteModel noteModel){
    noteList.add(noteModel);
  }

  void removeNote(int index){
    noteList.removeAt(index);
  }
}
