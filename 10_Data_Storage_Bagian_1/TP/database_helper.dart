import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SQLHelper {
  static Future<Database> db() async {
    final path = await getDatabasesPath();
    return openDatabase(
      join(path, 'app_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE users (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT, createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP)',
        );
      },
      version: 1,
    );
  }

  // Read
  static Future<List<Map<String, dynamic>>> getUsers() async {
    final db = await SQLHelper.db();
    return db.query('users');
  }
}

// Create
Future<int> addUser(String name, String email) async {
  final db = await SQLHelper.db();
  return await db.insert('users', {'name': name, 'email': email});
}

// Update
Future<int> updateUser(int id, String name, String email) async {
  final db = await SQLHelper.db();
  return await db.update(
    'users',
    {'name': name, 'email': email},
    where: 'id = ?',
    whereArgs: [id],
  );
}

// Delete
Future<int> deleteUser(int id) async {
  final db = await SQLHelper.db();
  return await db.delete('users', where: 'id = ?', whereArgs: [id]);
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> _users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  void fetchUsers() async {
    final users = await SQLHelper.getUsers();
    setState(() {
      _users = users;
    });
    print(_users); // Debugging: Print data ke console
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SQLite Example'),
          centerTitle: true,
        ),
        body: _users.isEmpty
            ? Center(child: Text('No users found'))
            : ListView.builder(
                itemCount: _users.length,
                itemBuilder: (context, index) {
                  final user = _users[index];
                  return ListTile(
                    title: Text(user['name']),
                    subtitle: Text(user['email']),
                  );
                },
              ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
