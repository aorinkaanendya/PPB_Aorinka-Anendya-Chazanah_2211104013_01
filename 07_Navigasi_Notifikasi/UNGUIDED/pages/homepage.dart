import 'package:flutter/material.dart';
import '../models/product.dart';
import 'detailpage.dart';

class ProductListPage extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: 1,
      nama: 'Tiffany Wire Bangle',
      harga: 2100000.00,
      imageurl:
          'https://media.tiffany.com/is/image/Tiffany/EcomBrowseM/tiffany-knotwire-bangle-69526020_1080400_ED_M.jpg?defaultImage=NoImageAvailableInternal&fmt=webp',
      deskripsi:
          'Tiffany Knot is an expression of love’s unwavering bonds. Inspired by an archival bow crafted in 1889, Knot is a symbol of life’s most enduring ties and meaningful connections',
    ),
    Product(
      id: 2,
      nama: 'Tiffany T1 Narrow Diamond',
      harga: 1500000.00,
      imageurl:
          'https://media.tiffany.com/is/image/Tiffany/EcomBrowseM/tiffany-tt1-narrow-diamond-hinged-bangle-68315697_1016656_ED.jpg?defaultImage=NoImageAvailableInternal&fmt=webp',
      deskripsi:
          'Tiffany T is an expression of love’s endless potential. Inspired by an archival bracelet from 1975, T is an homage to the House’s iconic motif and the spirit of New York',
    ),
    Product(
      id: 3,
      nama: 'Tiffany Coquette Gold',
      harga: 2400000.00,
      imageurl:
          'https://media.tiffany.com/is/image/Tiffany/EcomBrowseM/tiffany-knotwire-bangle-70453363_1076316_ED.jpg?defaultImage=NoImageAvailableInternal&fmt=webp',
      deskripsi:
          'Tiffany Coquette Gold is an expression of love’s unwavering bonds. Inspired by an archival bow crafted in 1889, Knot is a symbol of life’s most enduring ties and meaningful connections',
    ),
    Product(
      id: 4,
      nama: 'Tiffany T Wire Bracelet',
      harga: 700000.00,
      imageurl:
          'https://media.tiffany.com/is/image/Tiffany/EcomBrowseM/tiffany-twire-bracelet-33263503_997785_ED_M.jpg?defaultImage=NoImageAvailableInternal&fmt=webp',
      deskripsi:
          'Tiffany T is an expression of love’s endless potential. Inspired by an archival bracelet from 1975, T is an homage to the House’s iconic motif and the spirit of New York',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tiffany & Co Product')),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (ctx, i) => ProductCard(products[i]),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade200,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
            child: Image.network(
              product.imageurl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.nama,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Rp ${product.harga.toStringAsFixed(2)}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 10), // Memberikan jarak antara teks dan tombol
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ProductDetailPage(product),
                            ),
                          );
                        },
                        child: Text('Shop Now'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                5), // Mengatur border radius
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
