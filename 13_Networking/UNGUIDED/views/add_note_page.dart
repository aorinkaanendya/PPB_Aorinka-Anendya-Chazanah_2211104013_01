import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/notes_controller.dart';

class AddNotePage extends StatelessWidget {
  const AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    final NotesController notesController = Get.find();
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                notesController.addNote(
                  titleController.text,
                  descriptionController.text,
                );
                Get.back();
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
