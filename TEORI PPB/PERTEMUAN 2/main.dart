void main() {
  List<Map<String, dynamic>> daftarMahasiswa = [
    {
      "nama": "John Doe",
      "ipk": 3.88,
      "isMarried": false,
    },
    {
      "nama": "Andi Doe",
      "ipk": 3.78,
      "isMarried": true,
    },
    {
      "nama": "Budi Doe",
      "ipk": 3.68,
      "isMarried": true,
    }
  ];

  // double totalIPK = 0.0;
  // for (var mahasiswa in daftarMahasiswa) {
  //   totalIPK += mahasiswa['ipk'];
  // }
  // double ratarata = totalIPK / daftarMahasiswa.length;
  // print('Rata-rata IPK adalah $ratarata');

  int jumlahMenikah = 0;
  for (var mahasiswa in daftarMahasiswa) {
    if (mahasiswa['isMarried']) {
      jumlahMenikah++;
    }
  }
  print(
      'Jumlah mahasiswa yang sudah menikah sebanyak $jumlahMenikah mahasiswa');
}
