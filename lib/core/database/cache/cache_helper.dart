import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPreferences;

class CacheHelper {
  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<bool> putData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) return await sharedPreferences!.setString(key, value);
    if (value is int) return await sharedPreferences!.setInt(key, value);
    if (value is bool) return await sharedPreferences!.setBool(key, value);
    if (value is double) return await sharedPreferences!.setDouble(key, value);
    return await sharedPreferences!.setStringList(key, value);
  }

  dynamic getData({required String key}) => sharedPreferences!.get(key);

  Future<bool> removeData({required String key}) async =>
      await sharedPreferences!.remove(key);
  Future<bool> clearData() async => await sharedPreferences!.clear();
}
