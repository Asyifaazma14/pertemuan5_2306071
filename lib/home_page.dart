import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name;
  final double price;
  final String imageUrl;
  final String description;

  const HomePage({
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
        title: const Text("Halaman Utama"),
        backgroundColor: const Color.fromARGB(255, 243, 33, 184),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            // Gambar Kemeja
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                "https://images.unsplash.com/photo-1602810318383-e386cc2a3ccf",
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),

            // Nama Produk
            Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            // Harga Produk
            Text(
              "Rp $price",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.green,
              ),
            ),

            const SizedBox(height: 20),

            // Tombol Pindah Halaman
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text("Pindah ke Halaman Kedua"),
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}