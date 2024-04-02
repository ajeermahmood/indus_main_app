import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  Future<void> setUserID(String userId) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('user_id', userId);
  }

  Future<String?> getUserID() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('user_id');
  }

  Future<void> removeUserID() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('user_id');
  }

  Future<void> setUserThemeModePrefs(bool themeMode) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('theme_black', themeMode);
  }

  Future<bool?> getUserThemeModePrefs() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('theme_black');
  }
}
