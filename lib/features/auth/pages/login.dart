// ignore_for_file: library_private_types_in_public_api

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/features/lists_pokemon/services/get_pokemon.dart';
import 'package:learn_flutter/shared/injections/injections.dart';
import 'package:learn_flutter/shared/routes/index_route.gr.dart';
import 'package:learn_flutter/shared/services/index.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isClick = false;
  // final GetPokemon _getPokemon = getIt<GetPokemon>();

  @override
  initState(){
    super.initState();
    print("ceeeeeeek ${getIt<DioClient>()}");
  
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
            child: Column(children: [
      const Text("Hello there this is the login page"),
      const SizedBox(height: 25),
      InkWell(
        onTap: () {
          setState(() => _isClick = !_isClick);
          Future.delayed(const Duration(milliseconds: 200), () {
            context.router.pushNamed("/pokemon-list");
          });
        },
        child: _isClick
            ? const Text('Click Login')
            : const Text('Login Not Click',
                style: TextStyle(color: Colors.blue)),
      )
    ])));
  }
}
