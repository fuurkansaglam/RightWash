import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:right_wash/src/view/home/home_view.dart';
import 'package:right_wash/src/view/washing_station/washing_station_view.dart';
import 'package:right_wash/src/view/washing_suggestion/washing_suggestion_view.dart';

import '../../../view/splash/splash_view.dart';
import '../../base/functions/base_functions.dart';

final GlobalKey<NavigatorState> mainNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'main');

class Routes {
  static Routes? _instance;
  static Routes get instance {
    _instance ??= Routes._init();
    return _instance!;
  }

  Routes._init();

  GoRouter routes = GoRouter(
    navigatorKey: mainNavigatorKey,
    initialLocation: "/home",
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
      GoRoute(
        path: "/washing-suggestion",
        pageBuilder: (context, state) {
          return BaseFunctions.instance.animatedRouting(
            state: state,
            route: const WashingSuggestionView(),
          );
        },
      ),
      GoRoute(
        path: "/washing-station",
        pageBuilder: (context, state) {
          return BaseFunctions.instance.animatedRouting(
            state: state,
            route: const WashingStationView(),
          );
        },
      ),
    ],
  );
}
