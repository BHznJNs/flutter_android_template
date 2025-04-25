// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get settingsAppBarTitle => 'Paramètres';

  @override
  String get applicationThemeSettingTitle => 'Thème de l\'application';

  @override
  String get lightThemeOption => 'Clair';

  @override
  String get darkThemeOption => 'Sombre';

  @override
  String get systemThemeOption => 'Système';

  @override
  String get languagesSettingTitle => 'Langues';

  @override
  String get languagesAppBarTitle => 'Langues';

  @override
  String get systemLanguageOption => 'Système';
}
