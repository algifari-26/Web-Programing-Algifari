import 'package:flutter/material.dart';
import 'package:fluttproject/ui/produk_detail.dart';

class Produkform extends StatefulWidget {
  const Produkform({super.key});

  @override
  State<Produkform> createState() => _Produkformstate();
}

class _Produkformstate extends State<Produkform> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Produk')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHargaProduk(),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  // 2. Fungsi-fungsi diletakkan di bawah sini
  _textboxKodeProduk() {
    return TextField(
      controller: _kodeProdukTextboxController,
      decoration: const InputDecoration(labelText: "Kode Produk"),
    );
  }

  _textboxNamaProduk() {
    return TextField(
      controller: _namaProdukTextboxController,
      decoration: const InputDecoration(labelText: "Nama Produk"),
    );
  }

  _textboxHargaProduk() {
    return TextField(
      controller: _hargaProdukTextboxController,
      decoration: const InputDecoration(labelText: "Harga Produk"),
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      child: const Text('Simpan'),
      onPressed: () {
        String kode_produk = _kodeProdukTextboxController.text;
        String nama_produk = _namaProdukTextboxController.text;
        int harga = int.parse(_hargaProdukTextboxController.text);

        Navigator.of(context).push(
          new MaterialPageRoute(
            builder: (context) => ProdukDetail(
              kodeProduk: kode_produk,
              namaProduk: nama_produk,
              harga: harga,
            ),
          ),
        );
      },
    );
  }
}
