import 'package:flutter/foundation.dart';

import '../../_core/data/images.dart';
import 'eating_strategy/herbivorous_eating_behaviour.dart';
import 'flying_strategy/normal_flying_behaviour.dart';
import 'i_bird.dart';

@immutable
class Hummingbird extends IBird {
  Hummingbird()
      : super(
          name: 'Hummingbird',
          image: Images.birdHummingbird,
          flyingBehaviour: NormalFlyingBehaviour(),
          eatingBehaviour: HerbivorousEatingBehaviour(),
        );
}
