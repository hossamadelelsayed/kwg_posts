import 'package:flutter/material.dart';
import 'app_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

enum SupportedLocale {
  en,
  ar,
}

Map supportedLocaleMap = {
  const Locale.fromSubtags(
    languageCode: 'en',
    countryCode: 'US',
  ): 'assets/locale/lang_en.json',
  const Locale.fromSubtags(
    languageCode: 'ar',
  ): 'assets/locale/lang_ar.json',
};

List<Locale> supportedLocale = [
  const Locale.fromSubtags(
    languageCode: 'en',
    countryCode: 'US',
  ),
  const Locale.fromSubtags(
    languageCode: 'ar',
  ),
];

List<LocalizationsDelegate<dynamic>> localizationDelegates = [
  AppLocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
  DefaultCupertinoLocalizations.delegate,
];
