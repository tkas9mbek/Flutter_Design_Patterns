import 'package:flutter/cupertino.dart';

import '../../_core/theme/the_colors.dart';
import 'i_design_pattern.dart';

@immutable
class StructuralDesignPattern extends IDesignPattern {
  StructuralDesignPattern({
    required String title,
    required String route,
  }) : super(
          title: title,
          route: route,
          color: TheColors.blueLight,
        );
}
