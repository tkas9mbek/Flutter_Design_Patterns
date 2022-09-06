import 'package:flutter/material.dart';

import '../../_core/theme/the_colors.dart';
import 'i_design_pattern.dart';

@immutable
class CreationalDesignPattern extends IDesignPattern {
  CreationalDesignPattern({
    required super.title,
    required super.route,
  }) : super(
          color: TheColors.greenLight,
        );
}
