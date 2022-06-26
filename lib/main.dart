import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/pages/home/home.dart';

void main() {
  runApp(const PoCApp());
}

class PoCApp extends StatelessWidget {
  const PoCApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Rick And Morty PoC App',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
