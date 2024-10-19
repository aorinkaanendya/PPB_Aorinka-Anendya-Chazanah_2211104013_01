import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RekomendasiWisataBanyumas(),
    );
  }
}

class RekomendasiWisataBanyumas extends StatelessWidget {
  final List<Map<String, String>> Wisata = [
    {
      'namaWisata': 'Curug Jenggala',
      'deskripsi':
          'Curug Jenggala adalah air terjun yang berlokasi di Ketenger, Baturaden, Banyumas. Air terjun ini memiliki ketinggian 30 meter dari permukaan tanah. Curug ini mempunyai tiga air terjun yang tingginya sejajar.',
      'gambar':
          'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/574/2024/04/14/IMG_20240414_040023-2185214297.jpg',
    },
    {
      'namaWisata': 'Taman Mas Kemambang',
      'deskripsi':
          'Terletak di Jalan Karangkobar, No.9, Glempang, Bancarkembar, Purwokerto Utara, Taman Mas Kemambang merupakan destinasi kuliner dan rekreasi yang ramah di Purwokerto. Ia memiliki desain yang unik, gabungan antara kolam dan taman.',
      'gambar':
          'https://i0.wp.com/djavatoday.com/wp-content/uploads/2023/10/IMG_20231002_210914_Tib1ZeQJ97_FhgBIvOK4v.jpeg?fit=1200%2C675&ssl=1',
    },
    {
      'namaWisata': 'Hutan Pinus Limpakuwus',
      'deskripsi':
          'Hutan Pinus Limpakuwus merupakan hutan yang berada di kawasan wisata Baturaden, yang berada di ketinggian 750 mdpl. Tempat ini cocok menjadi tempat wisata dari berbagai kalangan.',
      'gambar':
          'https://asset.kompas.com/crops/6qmTciVxf50AgOp8_4zsusC2uMc=/0x61:1000x728/750x500/data/photo/2023/10/25/65392fad84295.jpg'
    },
    {
      'namaWisata': 'Telaga Sunyi',
      'deskripsi':
          'Salah satu wisata alam di sekitar Baturraden yang sampai saat ini masih terjaga keasriannya adalah Telaga Sunyi. Berada di tengah hutan pinus dan damar membuat suasana Telaga Sunyi sepi dan menenangkan.',
      'gambar':
          'https://static.promediateknologi.id/crop/0x538:960x1191/0x0/webp/photo/p2/74/2024/06/30/IMG-20240630-WA0005-1398012367.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Rekomendasi Wisata di Banyumas',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold, // Menambahkan fontWeight.bold
                ),
              ),
              background: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/6/66/Banyumas_Regency.jpg',
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: Color.fromARGB(255, 46, 159, 252),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Card(
                  color: Colors.blue[50],
                  margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          Wisata[index]['namaWisata']!,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Image.network(
                          Wisata[index]['gambar']!,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 10),
                        Text(
                          Wisata[index]['deskripsi']!,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Kunjungi Sekarang',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 46, 159, 252),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: Wisata.length,
            ),
          ),
        ],
      ),
    );
  }
}
