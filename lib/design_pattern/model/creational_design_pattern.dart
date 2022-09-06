import 'package:flutter/material.dart';

import '../../_core/theme/the_colors.dart';
import 'i_design_pattern.dart';

@immutable
class CreationalDesignPattern extends IDesignPattern {
  CreationalDesignPattern({
    required String title,
    required String route,
  }) : super(
          title: title,
          route: route,
          color: TheColors.greenLight,
        );
}
