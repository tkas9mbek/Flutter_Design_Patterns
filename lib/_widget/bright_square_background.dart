import 'package:flutter/material.dart';

class BrightSquareBackground extends StatelessWidget {
  const BrightSquareBackground({
    required this.child,
    this.padding = EdgeInsets.zero,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) => AspectRatio(
        aspectRatio: 1,
        child: Container(
          padding: padding,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: child,
        ),
      );
}
