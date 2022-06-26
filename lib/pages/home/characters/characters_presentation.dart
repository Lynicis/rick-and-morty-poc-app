import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/pages/home/characters/model/characters.dart';
import 'package:rick_and_morty_app/widgets/character_card.dart';

class CharactersPresentation extends StatelessWidget {
  final List<CharactersResults> characters;

  const CharactersPresentation({
    Key? key,
    required this.characters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: characters.length,
      itemBuilder: (context, index) {
        final character = characters[index];
        return CharacterCard(
          character: character,
          imageShow: true,
        );
      },
    );
  }
}