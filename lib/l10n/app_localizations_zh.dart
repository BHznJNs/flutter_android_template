// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get settingsAppBarTitle => '设置';

  @override
  String get applicationThemeSettingTitle => '应用主题';

  @override
  String get lightThemeOption => '浅色';

  @override
  String get darkThemeOption => '深色';

  @override
  String get systemThemeOption => '跟随系统';

  @override
  String get languagesSettingTitle => '语言';

  @override
  String get languagesAppBarTitle => '语言';

  @override
  String get systemLanguageOption => '跟随系统';
}
