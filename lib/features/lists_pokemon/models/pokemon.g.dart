// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonImpl _$$PokemonImplFromJson(Map<String, dynamic> json) =>
    _$PokemonImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => DataPokemon.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as int,
      next: json['next'] as String,
      previous: json['previous'] as String?,
    );

Map<String, dynamic> _$$PokemonImplToJson(_$PokemonImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
    };

_$DataPokemonImpl _$$DataPokemonImplFromJson(Map<String, dynamic> json) =>
    _$DataPokemonImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$DataPokemonImplToJson(_$DataPokemonImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
