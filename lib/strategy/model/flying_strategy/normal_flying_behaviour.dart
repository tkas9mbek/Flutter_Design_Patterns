import 'package:flutter/foundation.dart';

import 'i_flying_behaviour.dart';

@immutable
class NormalFlyingBehaviour implements IFlyingBehaviour {
  @override
  String fly() => 'I can fly!';
}
