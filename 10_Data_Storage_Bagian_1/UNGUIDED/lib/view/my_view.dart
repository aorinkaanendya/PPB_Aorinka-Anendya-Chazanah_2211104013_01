import 'package:flutter/material.dart';
import 'package:unguided_modul_10/helper/db_helper.dart';
import 'package:unguided_modul_10/screens/add_data_page.dart';
import 'package:unguided_modul_10/screens/edit_data_page.dart';

class MyDatabaseView extends StatefulWidget {
  const MyDatabaseView({super.key});

  @override
  State<MyDatabaseView> createState() => _MyDatabaseViewState();
}

class _MyDatabaseViewState extends State<MyDatabaseView> {
  final DatabaseHelper dbHelper = DatabaseHelper();
  List<Map<String, dynamic>> _dataMahasiswa = [];

  @override
  void initState() {
    super.initState();
    _refreshData();
  }

  void _refreshData() async {
    final data = await dbHelper.queryAllRows();
    setState(() {
      _dataMahasiswa = data;
    });
  }

  void _navigateToAddDataPage() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddDataPage(dbHelper: dbHelper),
      ),
    );
    if (result == true) {
      _refreshData();
    }
  }

  void _navigateToEditDataPage(Map<String, dynamic> mahasiswa) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditDataPage(
          dbHelper: dbHelper,
          mahasiswa: mahasiswa,
        ),
      ),
    );
    if (result == true) {
      _refreshData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SQLite Biodata Mahasiswa'),
        backgroundColor: Colors.amber,
      ),
      body: _dataMahasiswa.isEmpty
          ? const SizedBox() // Tidak ada teks atau widget lain
          : ListView(
              children: _dataMahasiswa.map((mahasiswa) {
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    title: Text(mahasiswa['nama']),
                    subtitle: Text(
                        'NIM: ${mahasiswa['nim']}\nAlamat: ${mahasiswa['alamat']}\nHobi: ${mahasiswa['hobi']}'),
                    onTap: () => _navigateToEditDataPage(mahasiswa),
                  ),
                );
              }).toList(),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToAddDataPage,
        child: const Icon(Icons.add),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
