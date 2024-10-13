import 'package:flutter/material.dart';

class LatihanListView extends StatelessWidget {
  const LatihanListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> listContainer = [
      Container(
        height: 200,
        width: 200,
        color: Colors.blue,
        child: Center(child: Text('Type A')),
      ),
      Container(
        height: 200,
        width: 200,
        color: Colors.yellow,
        child: Center(child: Text('Type B')),
      ),
      Container(
        height: 200,
        width: 200,
        color: Colors.blue,
        child: Center(child: Text('Type C')),
      )
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('Latihan List View'),
          backgroundColor: Colors.orange,
        ),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return listContainer[index];
            })

        //ListView(
        //children: listContainer,
        //),
        );
  }
}
