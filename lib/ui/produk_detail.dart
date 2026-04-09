import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;

  const ProdukDetail({
    super.key,
    required this.kodeProduk,
    required this.namaProduk,
    required this.harga,
  });

  @override
  State<ProdukDetail> createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Produk')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Baris 1: Kode Produk
          Row(
            children: [
              const SizedBox(width: 110, child: Text("Kode Produk")),
              const Text(": "),
              Text(widget.kodeProduk),
            ],
          ),
          const SizedBox(height: 8), // jarak antar baris
          // Baris 2: Nama Produk
          Row(
            children: [
              const SizedBox(width: 110, child: Text("Nama Produk")),
              const Text(": "),
              Text(widget.namaProduk),
            ],
          ),
          const SizedBox(height: 8),

          // Baris 3: Harga
          Row(
            children: [
              const SizedBox(width: 110, child: Text("Harga")),
              const Text(": "),
              Text(widget.harga.toString()),
            ],
          ),
        ],
      ), // Column
    ); // Scaffold
  }
}
