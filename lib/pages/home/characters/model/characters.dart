import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'characters.g.dart';

@JsonSerializable()
class CharactersInfo extends Equatable {
  final int count;
  final int pages;
  final String next;

  CharactersInfo({
    required this.count,
    required this.pages,
    required this.next,
  });

  factory CharactersInfo.fromJson(Map<String, dynamic> json) => _$CharactersInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CharactersInfoToJson(this);

  @override
  List<Object> get props => [count, pages, next];
}

@JsonSerializable()
class CharactersResults extends Equatable {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final Object origin;
  final Object location;
  final String image;
  final List episode;
  final String url;
  final String created;

  CharactersResults({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });

  factory CharactersResults.fromJson(Map<String, dynamic> json) =>
      _$CharactersResultsFromJson(json);

  Map<String, dynamic> toJson() => _$CharactersResultsToJson(this);

  @override
  List<Object> get props => [
   id,
   name,
   status,
   species,
   type,
   gender,
   origin,
   location,
   image,
   episode,
   url,
   created,
  ];
}

@JsonSerializable()
class CharactersResponse extends Equatable {
  final CharactersInfo info;
  final List<CharactersResults> results;

  CharactersResponse({
    required this.info,
    required this.results,
  });

  factory CharactersResponse.fromJson(Map<String, dynamic> json) =>
      _$CharactersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CharactersResponseToJson(this);

  @override
  List<Object> get props => [info, results];
}