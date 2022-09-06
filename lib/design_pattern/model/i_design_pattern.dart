import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class IDesignPattern extends Equatable {
  const IDesignPattern({
    required this.title,
    required this.route,
    required this.color,
  });

  final String title;
  final String route;
  final Color color;

  @override
  List<Object?> get props => [title, route, color];
}
