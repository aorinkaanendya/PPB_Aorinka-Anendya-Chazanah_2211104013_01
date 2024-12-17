import 'package:flutter/material.dart';
import 'package:modul14/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HTTP Request Example',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Tambahkan tema default
      ),
      home: const HomeScreen(), // Tambahkan titik dua (:) dan const
    );
  }
}
