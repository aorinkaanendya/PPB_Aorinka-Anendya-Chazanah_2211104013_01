import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BaturadenPage(),
    );
  }
}

class BaturadenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rekomendasi Wisata"),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Baturraden',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 150, // Tinggi gambar
              width: 300, // Lebar gambar sesuai contoh
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwBwAYW9PMHqQ_uM1Yr7otTFLmb5xgGSakMQ&s',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Baturraden adalah sebuah objek wisata alam yang terletak di lereng Gunung Slamet, sekitar 15 kilometer dari pusat kota Purwokerto, Kabupaten Banyumas, Jawa Tengah. Terkenal dengan pemandangan alamnya yang indah dan udara yang sejuk, Baturaden menjadi destinasi favorit wisatawan lokal maupun mancanegara.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Aksi ketika tombol ditekan
              },
              child: Text("Kunjungi Tempat"),
            ),
          ],
        ),
      ),
    );
  }
}
