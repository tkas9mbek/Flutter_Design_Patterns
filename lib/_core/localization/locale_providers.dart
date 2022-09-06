import 'dart:io';
import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final platformLocaleProvider = Provider<Locale>((ref) {
  final platformLocaleName = Platform.localeName;
  String languageCode;

  if (Platform.isIOS) {
    languageCode = platformLocaleName;
  } else {
    languageCode = platformLocaleName.substring(0, platformLocaleName.indexOf('_'));
  }

  return Locale(languageCode);
});

final fallbackLocaleProvider = Provider<Locale>((ref) {
  final platformLocale = ref.watch(platformLocaleProvider);
  final supportedLocales = ref.watch(supportedLocalesProvider);

  return supportedLocales.contains(platformLocale) ? platformLocale : supportedLocales[0];
});

final supportedLocalesProvider = Provider<List<Locale>>((ref) => [const Locale('en')]);

final supportedLanguageCodesProvider = Provider<List<String>>((ref) {
  final supportedLanguages = ref.watch(supportedLocalesProvider);

  return supportedLanguages.map((e) => e.languageCode).toList();
});
