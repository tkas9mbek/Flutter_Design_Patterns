import 'package:flutter/foundation.dart';

import 'i_eating_behaviour.dart';

@immutable
class CarnivorousEatingBehaviour implements IEatingBehaviour {
  @override
  String eat() => 'I eat other animals!';
}
