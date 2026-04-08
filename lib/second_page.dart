import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String name;
  final double price;
  final String imageUrl;
  final String description;

  const SecondPage({
    super.key,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Kedua"),
        backgroundColor: const Color.fromARGB(255, 243, 33, 205),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // FOTO KEMEJA
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                "https://images.unsplash.com/photo-1602810318383-e386cc2a3ccf",
                width: double.infinity,
                height: 230,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),

            // NAMA PRODUK
            Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            // HARGA
            Text(
              "Rp $price",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.green,
              ),
            ),

            const SizedBox(height: 16),

            // DESKRIPSI PRODUK
            const Text(
              "Deskripsi Produk",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Kemeja pria casual dengan bahan katun premium yang lembut dan nyaman digunakan sepanjang hari. "
              "Desain modern dengan potongan slim fit membuat penampilan lebih rapi dan stylish. "
              "Cocok digunakan untuk kegiatan santai, kuliah, kerja, maupun acara semi formal.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 30),

            // BUTTON KEMBALI
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text("Kembali"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}