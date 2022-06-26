import 'dart:convert';
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:rick_and_morty_app/pages/home/characters/characters_presentation.dart';
import 'package:rick_and_morty_app/pages/home/characters/model/characters.dart';

class CharactersContainer extends StatefulWidget {
  const CharactersContainer({Key? key}) : super(key: key);

  @override
  _CharactersContainerState createState() => _CharactersContainerState();
}


Future<CharactersResponse> getCharacters() async {
    try{
      final resp = await http.get(
        Uri.parse('https://rickandmortyapi.com/api/character/'),
      );

      if (resp.statusCode == 200) {
        return CharactersResponse.fromJson(
          json.decode(resp.body) as Map<String, dynamic>,
        );
      } else {
        throw Exception('Failed to load characters');
      }
    }catch(e){
      throw Exception(e);
    }
}


class _CharactersContainerState extends State<CharactersContainer> {
  late Future<CharactersResponse> charactersList;

  @override
  void initState() {
    super.initState();
    charactersList = getCharacters();
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CharactersResponse>(
      future: charactersList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CharactersPresentation(
            characters: snapshot.data!.results,
          );
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        } else {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }
      },
    );
  }
}