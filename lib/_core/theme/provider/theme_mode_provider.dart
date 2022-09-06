import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utility/shared_preferences_provider.dart';

final themeModeProvider = StateNotifierProvider<ThemeStateNotifier, ThemeMode>((ref) {
  final sharedPreferences = ref.watch(sharedPreferencesProvider);

  return ThemeStateNotifier(sharedPreferences: sharedPreferences);
});

class ThemeStateNotifier extends StateNotifier<ThemeMode> {
  ThemeStateNotifier({
    required this.sharedPreferences,
  }) : super(ThemeMode.light) {
    loadFromStorage();
  }

  late SharedPreferences sharedPreferences;

  void switchTheme() {
    ThemeMode next;

    if (state == ThemeMode.dark) {
      next = ThemeMode.light;
    } else {
      next = ThemeMode.dark;
    }

    state = next;
    sharedPreferences.setString('theme', next.toString());
  }

  void loadFromStorage() {
    final themeString = sharedPreferences.get('theme');

    state = themeString == null
        ? ThemeMode.light
        : ThemeMode.values.firstWhere((e) => e.toString() == themeString);
  }
}
