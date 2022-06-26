import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/pages/home/characters/characters_container.dart';
import 'package:rick_and_morty_app/widgets/app_bar.dart';
import 'package:rick_and_morty_app/widgets/bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CharactersContainer(),
      appBar: buildAppBar(),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}