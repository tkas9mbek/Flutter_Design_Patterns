import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'eating_strategy/i_eating_behaviour.dart';
import 'flying_strategy/i_flying_behaviour.dart';

@immutable
abstract class IBird extends Equatable {
  const IBird({
    required this.name,
    required this.image,
    required this.flyingBehaviour,
    required this.eatingBehaviour,
  });

  final String name;
  final String image;
  final IFlyingBehaviour flyingBehaviour;
  final IEatingBehaviour eatingBehaviour;

  String fly() => flyingBehaviour.fly();

  String eat() => eatingBehaviour.eat();

  String introduction() => 'I am $name';

  @override
  List<Object?> get props => [name, image, flyingBehaviour, eatingBehaviour];
}
