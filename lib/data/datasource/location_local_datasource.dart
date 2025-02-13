import 'package:shared_preferences/shared_preferences.dart';

class LocationLocalDatasource {
  Future<void> saveLatLong(String latitude, String longitude) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('latitude', latitude);
    await prefs.setString('longitude', longitude);
  }

  // Optionally, you can also create functions to retrieve these values
  Future<String?> getLatitude() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('latitude');
  }

  Future<String?> getLongitude() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('longitude');
  }
}
