import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'clothing_model.dart';

class DetailScreen extends StatelessWidget {
  final Clothing product;

  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(product.image, height: 300, width: double.infinity, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(product.category, style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 20),
                  Text(product.description, style: TextStyle(fontSize: 16)),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      // Gün 5: Sepet Simülasyonu
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Ürün sepete eklendi!")),
                      );
                    },
                    style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
                    child: Text("Sepete Ekle"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}