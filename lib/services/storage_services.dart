import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferences {
  static SharedPreferences? _preferences;

  static const _keyUsername = 'counter';

  static Future init() async => _preferences = await SharedPreferences.getInstance();

  static Future setUsername(int counter) async => await _preferences?.setInt(_keyUsername, counter);

  static int? getUsername() => _preferences?.getInt(_keyUsername);
}
