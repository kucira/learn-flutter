// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:learn_flutter/features/auth/pages/login.dart' as _i2;
import 'package:learn_flutter/features/lists_pokemon/pages/index_list.dart'
    as _i1;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    IndexList.name: (routeData) {
      final args =
          routeData.argsAs<IndexListArgs>(orElse: () => const IndexListArgs());
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.IndexList(key: args.key),
      );
    },
    Login.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Login(),
      );
    },
  };
}

/// generated route for
/// [_i1.IndexList]
class IndexList extends _i3.PageRouteInfo<IndexListArgs> {
  IndexList({
    _i4.Key? key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          IndexList.name,
          args: IndexListArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'IndexList';

  static const _i3.PageInfo<IndexListArgs> page =
      _i3.PageInfo<IndexListArgs>(name);
}

class IndexListArgs {
  const IndexListArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'IndexListArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.Login]
class Login extends _i3.PageRouteInfo<void> {
  const Login({List<_i3.PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
