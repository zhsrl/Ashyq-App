import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesKeys{
  static const iinValue = 'iinData';
  static const placeValue = 'placeData';
}

class SharedPreferencesTool{
  Future<bool> saveDataToPref(String key, String value) async{
    SharedPreferences pref = await SharedPreferences.getInstance();

    pref.setString(key, value);

    return pref.commit();
  }

  Future<String> getDataFromPref(String key) async{
    SharedPreferences pref = await SharedPreferences.getInstance();

    String? value = pref.getString(key);


    return value ?? "NULL DATA";
  }
}