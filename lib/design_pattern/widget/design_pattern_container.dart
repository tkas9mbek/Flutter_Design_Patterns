import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../_core/theme/the_fonts.dart';
import '../../_core/theme/the_styles.dart';
import '../model/i_design_pattern.dart';

class DesignPatternContainer extends StatelessWidget {
  const DesignPatternContainer({
    required this.designPattern,
    Key? key,
  }) : super(key: key);

  final IDesignPattern designPattern;

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () => context.push(designPattern.route),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: TheStyles.cardGeneralRadius,
          color: designPattern.color,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 9,
          horizontal: 12,
        ),
        child: Text(
          designPattern.title,
          style: TheFonts.title(context),
          textAlign: TextAlign.center,
        ),
      ));
}
