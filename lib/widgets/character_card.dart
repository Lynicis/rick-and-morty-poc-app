import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/pages/home/characters/model/characters.dart';

class CharacterCard extends StatelessWidget {
  final CharactersResults character;
  final bool imageShow;

  const CharacterCard({
    Key? key,
    required this.character,
    this.imageShow = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: buildCircleAvatar(character.image, imageShow),
            title: Text(character.name),
            subtitle: Text(character.species),
            trailing: buildStatus(character.status),
          ),
        ],
      ),
    );
  }
}

CircleAvatar? buildCircleAvatar(String image, bool imageShow) {
  return imageShow ? CircleAvatar(
    backgroundImage: NetworkImage(image),
  ) : null;
}

Widget buildStatus(String status) {
  return Text(
    status,
    style: handleCharacterStatusTextColor(status),
  );
}

TextStyle handleCharacterStatusTextColor(String status) {
  switch (status) {
    case 'Alive':
      return const TextStyle(color: Colors.green);
    case 'Dead':
      return const TextStyle(color: Colors.red);
    default:
      return const TextStyle(color: Colors.black);
  }
}