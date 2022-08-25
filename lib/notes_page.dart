import 'package:flutter/material.dart';
import 'package:flutter_voice/notes.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("Notes"),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: notes.length,
        itemBuilder: notes.length == 0
            ? (context, index) => Expanded(
                  child: Center(
                    child: Text("No Data"),
                  ),
                )
            : (context, index) {
                return ListTile(
                  title: Text("Note " + (notes.length - (index)).toString()),
                  subtitle: Text(notes[index]),
                );
              },
      ),
    );
  }
}
