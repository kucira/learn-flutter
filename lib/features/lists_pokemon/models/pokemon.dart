import "package:freezed_annotation/freezed_annotation.dart";
import 'package:flutter/foundation.dart';

part "pokemon.freezed.dart";
part "pokemon.g.dart";

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon(
      {required List<DataPokemon> results,
      required int count,
      required String next,
      String? previous}) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}

@freezed
class DataPokemon with _$DataPokemon {
  const factory DataPokemon({required String name, required String url}) =
      _DataPokemon;

  factory DataPokemon.fromJson(Map<String, dynamic> json) =>
      _$DataPokemonFromJson(json);
}
