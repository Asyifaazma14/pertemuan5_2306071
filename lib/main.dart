import 'package:flutter/material.dart';
import 'home_page.dart';
import 'second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String name = "kemeja pria";
  final double price = 100000;
  final String imageUrl = "https://picsum.photos/200";
  final String description = "Deskripsi produk A";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(
              name: name,
              price: price,
              imageUrl: imageUrl,
              description: description,
            ),
        '/second': (context) => SecondPage(
              name: name,
              price: price,
              imageUrl: imageUrl,
              description: description,
            ),
      },
    );
  }
}