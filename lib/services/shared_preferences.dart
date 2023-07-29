import 'package:shared_preferences/shared_preferences.dart';

import '../style/default_values.dart';

class XPreference {
    static late   SharedPreferences _prefs;

  static _initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static saveEscapeOnBoarding() async {
    await _initialize();
    await _prefs.setBool(ONBORDING, true);
  }

  static Future<bool?> isYetEscapeOnBoarding() async {
    await _initialize();
    return _prefs.getBool(ONBORDING);
  }
}
