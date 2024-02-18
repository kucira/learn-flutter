// ignore_for_file: library_private_types_in_public_api

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/features/lists_pokemon/models/pokemon.dart';
import 'package:learn_flutter/features/lists_pokemon/services/get_pokemon.dart';
import 'package:learn_flutter/shared/injections/injections.dart';
// import 'package:learn_flutter/shared/services/endpoint.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;

@RoutePage()
class IndexList extends StatefulWidget {
  // final GetPokemon getPokemon;
  IndexList({Key? key}) : super(key: key);

  @override
  _IndexListState createState() => _IndexListState();
}

class _IndexListState extends State<IndexList> {
  final formController = TextEditingController();
  final getPokemon = getIt<GetPokemon>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("poke poke ${getPokemon}");
  }

  // Future<List> _getPokemon() async {
  //   List pokemons = [];
  //   final url = Uri.parse("$baseUrl$pokemon");
  //   http.Response response = await http.get(url);
  //   if (response.statusCode == 200) {
  //     String data = response.body;
  //     final json = convert.jsonDecode(data);
  //     pokemons = json["results"];
  //     return pokemons;
  //   }
  //   return pokemons;
  // }

  @override
  void dispose() {
    // TODO: implement dispose
    formController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FutureBuilder<Pokemon?>(
          future: getPokemon.getPokemonList(),
          builder: (BuildContext context, AsyncSnapshot<Pokemon?> snapshot) {
            if (snapshot.hasData) {
              Pokemon? pokemon = snapshot.data;
              if (pokemon != null) {
                List<DataPokemon>? dataPokemon =
                    pokemon.results;
                return Expanded(
                    flex: 1,
                    child: ListView.builder(
                        itemCount: dataPokemon.length,
                        itemBuilder: (context, index) {
                          return Card(
                            margin: const EdgeInsets.all(10),
                            child: ListTile(
                              title: Text(dataPokemon[index].name),
                            ),
                          );
                        }));
              } else {
                return const Center(child: Text("No data found"));
              }
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
        ElevatedButton(
            onPressed: () {
              context.router.pop();
            },
            child: const Text("Back to login screen"))
      ],
    ));
  }
}
