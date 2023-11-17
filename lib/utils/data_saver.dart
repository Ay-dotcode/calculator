import 'package:shared_preferences/shared_preferences.dart';

class DataSaver {
  Future<void> setData({
    required List<String> data,
    required String key,
  }) async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();

    //save data with key (history)
    prefs.setStringList(key, data);
  }

  Future<List<String>> getHistory(String key) async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();

    return await prefs.getStringList(key) ?? [];
  }
}
