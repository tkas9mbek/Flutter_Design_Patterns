import 'package:flutter/foundation.dart';

import '../../_core/data/images.dart';
import 'eating_strategy/herbivorous_eating_behaviour.dart';
import 'flying_strategy/no_flying_behaviour.dart';
import 'i_bird.dart';

@immutable
class Ostrich extends IBird {
  Ostrich()
      : super(
          name: 'Ostrich',
          image: Images.birdOstrich,
          flyingBehaviour: NoFlyingBehaviour(),
          eatingBehaviour: HerbivorousEatingBehaviour(),
        );
}
