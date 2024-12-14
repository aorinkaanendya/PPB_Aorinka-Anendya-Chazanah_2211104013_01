import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/notes_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final NotesController notesController = Get.put(NotesController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: notesController.notes.length,
          itemBuilder: (context, index) {
            final note = notesController.notes[index];
            return ListTile(
              title: Text(note['title']!),
              subtitle: Text(note['description']!),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  notesController.deleteNoteAt(index);
                },
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Get.toNamed('/add');
        },
      ),
    );
  }
}
