import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    title: const Text('Rick And Morty'),
    titleTextStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
}