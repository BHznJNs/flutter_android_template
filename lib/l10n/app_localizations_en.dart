// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get settingsAppBarTitle => 'Settings';

  @override
  String get applicationThemeSettingTitle => 'Application theme';

  @override
  String get lightThemeOption => 'Light';

  @override
  String get darkThemeOption => 'Dark';

  @override
  String get systemThemeOption => 'System';

  @override
  String get languagesSettingTitle => 'Languages';

  @override
  String get languagesAppBarTitle => 'Languages';

  @override
  String get systemLanguageOption => 'System';
}
