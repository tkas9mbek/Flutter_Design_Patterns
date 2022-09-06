import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../_core/router/route_paths.dart';
import '../model/behavioural_design_pattern.dart';
import '../model/i_design_pattern.dart';

final designPatternListProvider = Provider<List<IDesignPattern>>(
  (ref) => [
    BehaviouralDesignPattern(
      title: 'Strategy',
      route: routeToStrategy,
    )
  ],
);
