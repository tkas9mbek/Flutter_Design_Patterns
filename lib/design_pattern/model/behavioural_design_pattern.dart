import 'package:flutter/material.dart';

import '../../_core/theme/the_colors.dart';
import 'i_design_pattern.dart';

@immutable
class BehaviouralDesignPattern extends IDesignPattern {
  BehaviouralDesignPattern({
    required String title,
    required String route,
  }) : super(
          title: title,
          route: route,
          color: TheColors.whiteNavajo,
        );
}
