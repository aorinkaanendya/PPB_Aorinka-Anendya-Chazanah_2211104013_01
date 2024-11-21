import 'package:flutter/material.dart';
import 'package:unguided_modul_10/view/my_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyDatabaseView(),
    );
  }
}
