import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPrefs {
  static const String Token = "_token";
  SharedPreferences _prefs;

  Future<AppSharedPrefs> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }

  String get token => _prefs.getString(Token);
  set token(value) {
    _prefs.setString(Token, value);
  }
}
