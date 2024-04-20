import 'package:core/constants/enums/route_enums.dart';
import 'package:core/core_widgets/no_data_found.dart';
import 'package:core/helpers/core_helpers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../common_widgets/scaffold.dart';
import '../login/login.dart';
import '../splash.dart';
import 'core_route_list.dart';

final GoRouter coreRoute = GoRouter(
  initialLocation: "/",
  redirectLimit: 3,
  errorBuilder: (context, state) {
    return CustomScaffold(
      childWidget: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NoDataFound(message: "Page Not Found"),
            ElevatedButton(
              onPressed: () => context.go("/"),
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  },
  navigatorKey: Const.navigatorKey,
  routes: _buildRoutes(),
);

List<RouteBase> _buildRoutes() {
  return [
    GoRoute(
      path: '/',
      parentNavigatorKey: Const.navigatorKey,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: CurveTween(curve: Curves.easeInOutSine).animate(animation), child: child);
        },
        child: FutureBuilder(
          future: login(),
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return const Splash();
            } else if (snapshot.hasError) {
              return const SizedBox(
                child: Text("Error"),
              );
            } else {
              if (snapshot.data == true) {
                return const CustomScaffold();
              } else {
                return const LoginScreen();
              }
            }
          },
        ),
      ),
      routes: [
        ..._staticRoutes(),
        ..._mainRoutes(),
      ],
    ),
  ];
}

Future<bool> login() async {
  return true;
}

List<GoRoute> _staticRoutes() {
  return [
    GoRoute(path: RoutePathCore.splash.name, name: RoutePathCore.splash.name, builder: (BuildContext context, GoRouterState state) => const Splash()),
    GoRoute(path: RoutePathCore.login.name, name: RoutePathCore.login.name, builder: (BuildContext context, GoRouterState state) => const LoginScreen()),
    GoRoute(
      path: RoutePathCore.todo.name,
      name: RoutePathCore.todo.name,
      pageBuilder: (BuildContext context, GoRouterState state) => CustomTransitionPage(
        key: state.pageKey,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: CurveTween(curve: Curves.easeInOutSine).animate(animation), child: child);
        },
        child: const CustomScaffold(),
      ),
    ),
  ];
}

List<GoRoute> _mainRoutes() {
  List<GoRoute> mainGoRoutes = [];

  for (var mainCoreRoute in mainRouteList) {
    mainGoRoutes.add(
      GoRoute(
        path: mainCoreRoute.routeName!,
        name: mainCoreRoute.routeName,
        pageBuilder: (BuildContext context, GoRouterState state) => CustomTransitionPage(
          key: state.pageKey,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: CurveTween(curve: Curves.easeInOutSine).animate(animation), child: child);
          },
          child: mainCoreRoute.widget!,
        ),
      ),
    );
  }

  return mainGoRoutes;
}
