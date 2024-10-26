import 'package:flutter/material.dart';

class MyTabbar extends StatefulWidget {
  const MyTabbar({super.key});

  @override
  State<MyTabbar> createState() => _MyTabbarState();
}

class _MyTabbarState extends State<MyTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Contoh Tab Bar"),
          backgroundColor: Colors.amber,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.food_bank),
                text: "Menu",
              ),
              Tab(
                icon: Icon(Icons.calendar_month),
                text: "Calendar",
              ),
              Tab(
                icon: Icon(Icons.history),
                text: "History",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Replace with your widget for the "Menu" tab
            Center(child: Text("Menu Content")),
            // Replace with your widget for the "Calendar" tab
            Center(child: Text("Calendar Content")),
            // Replace with your widget for the "History" tab
            Center(child: Text("History Content")),
          ],
        ),
      ),
    );
  }
}
