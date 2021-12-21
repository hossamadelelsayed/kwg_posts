import 'package:flutter/material.dart';

Locale getSelectedLang(Locale? locale, Iterable<Locale> supportedLocales) {
  // final LocaleUseCase localeUseCase = di<LocaleUseCase>();
  const String selectedLocale = 'en'; //localeUseCase.getLocale();

  if (selectedLocale != null && selectedLocale.isNotEmpty) {
    switch (selectedLocale) {
      case 'en':
        return const Locale('en', 'US');
      case 'ar':
        return const Locale('ar', '');
    }
  }

  if (locale?.languageCode.toLowerCase() == 'en') {
    return const Locale('en', 'US');
  }

  if (locale?.languageCode.toLowerCase() == 'ar') return const Locale('ar', '');

  return const Locale('ar', '');
}
