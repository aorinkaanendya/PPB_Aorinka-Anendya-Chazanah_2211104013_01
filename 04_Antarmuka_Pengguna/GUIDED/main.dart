import 'package:flutter/material.dart';
import 'package:praktikum_modul_4/list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.amber,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.ac_unit),
                  SizedBox(height: 40),
                  const Text('Item 1'),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 63, 243, 39),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.add_a_photo),
                  SizedBox(height: 40),
                  const Text('Item 1'),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 124, 235, 216),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.icecream_outlined),
                  SizedBox(height: 40),
                  const Text('Item 1'),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: const Color.fromARGB(255, 240, 34, 154),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.camera),
                  SizedBox(height: 40),
                  const Text('Item 1'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
