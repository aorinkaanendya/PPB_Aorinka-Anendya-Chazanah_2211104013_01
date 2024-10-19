import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible Exapanded'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          const Text("Flexible"),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 100,
                color: Colors.red,
              ),
              Flexible(
                child: Container(
                  height: 100,
                  color: Colors.yellow,
                  child: const Text(
                      "This is Flexible widget. Flexible takes up the remaining space but can shrink if needed"),
                ),
              ),
              Icon(Icons.sentiment_very_satisfied)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text("Expanded"),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 100,
                color: Colors.red,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.yellow,
                  child: Text(
                      "This is Expanded Widget, to take up all the reminding app"),
                ),
              ),
              Icon(Icons.sentiment_very_satisfied)
            ],
          )
        ],
      ),
    );
  }
}
