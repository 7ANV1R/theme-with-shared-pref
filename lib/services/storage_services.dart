import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferences {
  static SharedPreferences? _preferences;

  static const _keyThemeValue = 'themeValue';

  static Future init() async => _preferences = await SharedPreferences.getInstance();

  static Future setThemeValue(bool value) async => await _preferences?.setBool(_keyThemeValue, value);

  static bool? getThemeValue() => _preferences?.getBool(_keyThemeValue);
}
