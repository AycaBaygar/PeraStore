import 'package:flutter/material.dart';
import 'home_screen.dart';


void main() {
  // Uygulamanın başladığı yer
  runApp(const WearVibeApp());
}

class WearVibeApp extends StatelessWidget {
  const WearVibeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WearVibe Katalog',

      // Uygulama Genel Teması (Gün 5 Hedefi)
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          primary: Colors.indigo,
          secondary: Colors.amber,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          elevation: 2,
        ),
      ),

      // Uygulama ilk açıldığında gösterilecek ekran
      home: HomeScreen(),
    );
  }
}