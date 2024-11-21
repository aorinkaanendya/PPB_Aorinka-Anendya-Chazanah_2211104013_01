import 'package:flutter/material.dart';
import 'package:unguided_modul_10/helper/db_helper.dart';

class AddDataPage extends StatefulWidget {
  final DatabaseHelper dbHelper;

  const AddDataPage({super.key, required this.dbHelper});

  @override
  State<AddDataPage> createState() => _AddDataPageState();
}

class _AddDataPageState extends State<AddDataPage> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _hobiController = TextEditingController();

  void _saveData() async {
    if (_namaController.text.isNotEmpty &&
        _nimController.text.isNotEmpty &&
        _alamatController.text.isNotEmpty &&
        _hobiController.text.isNotEmpty) {
      // Simpan data ke database
      await widget.dbHelper.insert({
        'nama': _namaController.text,
        'nim': _nimController.text,
        'alamat': _alamatController.text,
        'hobi': _hobiController.text,
      });

      // Bersihkan input form
      _namaController.clear();
      _nimController.clear();
      _alamatController.clear();
      _hobiController.clear();

      // Kembalikan ke halaman sebelumnya dengan indikator sukses
      Navigator.pop(context, true);
    } else {
      // Tampilkan peringatan jika form tidak lengkap
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Mohon lengkapi semua kolom!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Biodata Mahasiswa'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _namaController,
              decoration: InputDecoration(
                labelText: 'Nama',
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _nimController,
              decoration: InputDecoration(
                labelText: 'NIM',
                prefixIcon: const Icon(Icons.badge),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _alamatController,
              decoration: InputDecoration(
                labelText: 'Alamat',
                prefixIcon: const Icon(Icons.home),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _hobiController,
              decoration: InputDecoration(
                labelText: 'Hobi',
                prefixIcon: const Icon(Icons.favorite),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveData,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              child: const Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
