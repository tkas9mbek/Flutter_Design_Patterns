import 'package:flutter/foundation.dart';

import 'i_eating_behaviour.dart';

@immutable
class HerbivorousEatingBehaviour implements IEatingBehaviour {
  @override
  String eat() => 'I eat plants!';
}
