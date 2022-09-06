import 'package:flutter/foundation.dart';

import 'i_flying_behaviour.dart';

@immutable
class NoFlyingBehaviour implements IFlyingBehaviour {
  @override
  String fly() => 'I cannot fly!';
}
