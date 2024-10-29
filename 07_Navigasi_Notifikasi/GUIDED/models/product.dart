class Product {
  final int id;
  final String nama;
  final double harga;
  final String imageurl;
  final String deskripsi;

  // Constructor
  Product({
    required this.id,
    required this.nama,
    required this.harga,
    required this.imageurl,
    required this.deskripsi,
  });

  // Method untuk mengonversi JSON ke object Product
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      nama: json['nama'],
      harga: json['harga'].toDouble(),
      imageurl: json['imageurl'],
      deskripsi: json['deskripsi'],
    );
  }

  // Method untuk mengonversi object Product ke JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama': nama,
      'harga': harga,
      'imageurl': imageurl,
      'deskripsi': deskripsi,
    };
  }
}
