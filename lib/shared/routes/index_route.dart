import 'package:auto_route/auto_route.dart';
import "index_route.gr.dart";

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        // routes go here
        AutoRoute(page: Login.page, path: "/"),
        AutoRoute(page: IndexList.page, path: "/pokemon-list"),
      ];
}
