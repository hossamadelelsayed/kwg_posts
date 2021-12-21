import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'locale_constants.dart';

class AppLocalizations {
  AppLocalizations();

  late Map<String, String> _localizedStrings;

  Future<bool> load(Locale locale) async {
    if (locale == null) {
      return false;
    }

    final String data = await rootBundle.loadString(supportedLocaleMap[locale]);
    final Map<String, dynamic> jsonMap = json.decode(data);

    _localizedStrings = jsonMap.map((String key, dynamic value) {
      return MapEntry(key, value.toString());
    });
    return true;
  }

  String translate(dynamic key, {String param1 = ''}) {
    return (_localizedStrings[key] ?? key).replaceAll('{PARAM1}', param1);
  }

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final AppLocalizations localizations = AppLocalizations();
    await localizations.load(locale);
    return localizations;
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
