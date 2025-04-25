// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get settingsAppBarTitle => '設定';

  @override
  String get applicationThemeSettingTitle => 'アプリケーションのテーマ';

  @override
  String get lightThemeOption => 'ライト';

  @override
  String get darkThemeOption => 'ダーク';

  @override
  String get systemThemeOption => 'システム';

  @override
  String get languagesSettingTitle => '言語';

  @override
  String get languagesAppBarTitle => '言語';

  @override
  String get systemLanguageOption => 'システム';
}
