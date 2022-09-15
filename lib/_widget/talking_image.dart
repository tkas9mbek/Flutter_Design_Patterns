import 'package:flutter/material.dart';

import 'bright_square_background.dart';

class TalkingImage extends StatelessWidget {
  const TalkingImage({
    required this.child,
    required this.message,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final String? message;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return BrightSquareBackground(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(40),
              child: Center(
                child: child,
              ),
            ),
            if (message != null) ...[
              Positioned(
                top: 12,
                right: 24,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)).copyWith(
                      bottomLeft: Radius.zero,
                    ),
                    border: Border.all(
                      color: colorScheme.onBackground,
                    ),
                  ),
                  child: Text(
                    message ?? '',
                  ),
                ),
              ),
            ],
          ],
        ),
    );
  }
}
