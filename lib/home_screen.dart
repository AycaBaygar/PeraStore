import 'package:flutter/material.dart';

import 'clothing_model.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  // Örnek Veri Listesi (Gün 4 - JSON Simülasyonu mantığı)
  final List<Clothing> products = [

  Clothing(
  id: 2,
  title: "Retro Çizgili Kazak",
  price: 680.00,
  description: "Yumuşak dokulu, vintage tarzı yansıtan triko kazak.",
  image: "https://images.unsplash.com/photo-1620799140408-edc6dcb6d633?q=80&w=500",
  category: "Üst Giyim",
  ),
  Clothing(
  id: 3,
  title: "Urban Beyaz Sneaker",
  price: 1450.90,
  description: "Günlük kullanıma uygun, ortopedik tabanlı şık beyaz ayakkabı.",
  image: "https://images.unsplash.com/photo-1549298916-b41d501d3772?q=80&w=500",
  category: "Ayakkabı",
  ),

  Clothing(
  id: 5,
  title: "Basic Pamuklu Tişört",
  price: 320.00,
  description: "%100 organik pamuktan üretilmiş, nefes alan kumaş.",
  image: "https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?q=80&w=500",
  category: "Üst Giyim",
  ),
  Clothing(
  id: 6,
  title: "Yünlü Kaşe Kaban",
  price: 2100.00,
  description: "Kış ayları için ideal, ısıyı hapseden premium kaban.",
  image: "https://images.unsplash.com/photo-1539533018447-63fcce2678e3?q=80&w=500",
  category: "Dış Giyim",
  ),
  ];

  // ... Build metodun ve diğer kodların aynı kalabilir



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Yan yana 2 kart
            childAspectRatio: 0.7,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final item = products[index];
            return GestureDetector(
              onTap: () {
                // Gün 3: Sayfalar Arası Veri Taşıma
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(product: item),
                  ),
                );
              },
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                        child: Image.network(item.image, fit: BoxFit.cover, width: double.infinity),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.title, style: TextStyle(fontWeight: FontWeight.bold), maxLines: 1),
                          SizedBox(height: 4),
                          Text("${item.price} TL", style: TextStyle(color: Colors.indigo)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}