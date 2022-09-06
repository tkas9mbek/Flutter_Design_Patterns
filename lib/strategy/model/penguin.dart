import 'package:flutter/foundation.dart';

import '../../_core/data/images.dart';
import 'eating_strategy/carnivorous_eating_behaviour.dart';
import 'flying_strategy/no_flying_behaviour.dart';
import 'i_bird.dart';

@immutable
class Penguin extends IBird {
  Penguin()
      : super(
          name: 'Penguin',
          image: Images.birdPenguin,
          flyingBehaviour: NoFlyingBehaviour(),
          eatingBehaviour: CarnivorousEatingBehaviour(),
        );
}
