import 'package:flutter/material.dart';
import 'package:fluttproject/ui/produk_form.dart'; // Pastikan import ini ada

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Produk', 
      home: Produkform(), 
    );
  }
}