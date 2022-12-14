import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../design_pattern/design_patterns_screen.dart';
import '../../strategy/strategy_pattern_screen.dart';
import '../../template_method/template_method_screen.dart';
import 'route_paths.dart';
import 'utility.dart';

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    initialLocation: routeToHome,
    routes: <GoRoute>[
      GoRoute(
        path: routeToHome,
        pageBuilder: (BuildContext context, GoRouterState state) =>
            buildPageTransition(context, state, page: const DesignPatternsScreen()),
      ),
      GoRoute(
        path: routeToStrategy,
        pageBuilder: (BuildContext context, GoRouterState state) =>
            buildPageTransition(context, state, page: const StrategyPatternScreen()),
      ),
      GoRoute(
        path: routeToTemplateMethod,
        pageBuilder: (BuildContext context, GoRouterState state) =>
            buildPageTransition(context, state, page: const TemplateMethodScreen()),
      ),
    ],
  ),
);
