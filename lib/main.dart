import 'package:flutter/material.dart';
import 'package:kuis_praktpm/halaman_list_buku.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KUIS PRAKTIKUM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HalamanListBuku(),
    );
  }
}