import 'package:flutter/foundation.dart';

import '../../_core/data/images.dart';
import 'eating_strategy/carnivorous_eating_behaviour.dart';
import 'flying_strategy/normal_flying_behaviour.dart';
import 'i_bird.dart';

@immutable
class Eagle extends IBird {
  Eagle()
      : super(
          name: 'Eagle',
          image: Images.birdEagle,
          flyingBehaviour: NormalFlyingBehaviour(),
          eatingBehaviour: CarnivorousEatingBehaviour(),
        );
}
