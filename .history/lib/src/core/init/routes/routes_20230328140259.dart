import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:right_wash/src/view/home/home_view.dart';

import '../../../view/splash/splash_view.dart';
import '../../base/functions/base_functions.dart';

final GlobalKey<NavigatorState> mainNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'main');
final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

class Routes {
  static Routes? _instance;
  static Routes get instance {
    _instance ??= Routes._init();
    return _instance!;
  }

  Routes._init();

  GoRouter routes = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: "/splash",
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        path: "/splash",
        pageBuilder: (context, state) {
          return BaseFunctions.instance.animatedRouting(
            state: state,
            route: const SplashView(),
          );
        },
      ),
      GoRoute(
        path: "/home",
        pageBuilder: (context, state) {
          return BaseFunctions.instance.animatedRouting(
            state: state,
            route: const HomeView(),
          );
        },
      ),
    ],
  );
}
