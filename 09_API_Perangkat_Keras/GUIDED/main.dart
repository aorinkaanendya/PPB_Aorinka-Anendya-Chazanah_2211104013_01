import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pertemuan_9/image_picker_screen.dart';
import 'package:pertemuan_9/myapi_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar API Perangkat Keras',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyApiPage(),
      //home: ImageFromGalleryEx(ImageSourceType.gallery)
    );
  }
}
