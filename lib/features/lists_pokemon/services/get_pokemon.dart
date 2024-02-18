import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:learn_flutter/features/lists_pokemon/models/pokemon.dart';
import 'package:learn_flutter/shared/injections/injections.dart';
import 'package:learn_flutter/shared/services/index.dart';

@injectable
class GetPokemon {
  final Dio dio = getIt<DioClient>().getDioClient();
  Future<Pokemon?> getPokemonList() async {
    Pokemon? pokemon;
    try {
      Response pokemonData = await dio.get("pokemon");
      pokemon = Pokemon.fromJson(pokemonData.data);
  } catch (err) {
      print(err);
    }
    return pokemon;
  }
}
