// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharactersInfo _$CharactersInfoFromJson(Map<String, dynamic> json) =>
    CharactersInfo(
      count: json['count'] as int,
      pages: json['pages'] as int,
      next: json['next'] as String,
    );

Map<String, dynamic> _$CharactersInfoToJson(CharactersInfo instance) =>
    <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
    };

CharactersResults _$CharactersResultsFromJson(Map<String, dynamic> json) =>
    CharactersResults(
      id: json['id'] as int,
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      type: json['type'] as String,
      gender: json['gender'] as String,
      origin: json['origin'] as Object,
      location: json['location'] as Object,
      image: json['image'] as String,
      episode: json['episode'] as List<dynamic>,
      url: json['url'] as String,
      created: json['created'] as String,
    );

Map<String, dynamic> _$CharactersResultsToJson(CharactersResults instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'origin': instance.origin,
      'location': instance.location,
      'image': instance.image,
      'episode': instance.episode,
      'url': instance.url,
      'created': instance.created,
    };

CharactersResponse _$CharactersResponseFromJson(Map<String, dynamic> json) =>
    CharactersResponse(
      info: CharactersInfo.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => CharactersResults.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CharactersResponseToJson(CharactersResponse instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };
