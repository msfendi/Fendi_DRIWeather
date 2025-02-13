import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app_rekadigi/core/constant/variable.dart';
import 'package:weather_app_rekadigi/data/models/responses/weather_list_response.dart';

class WeatherRemoteDatasource {
  Future<Either<String, WeatherListResponse>> getAllWeather(
      String latitude, String longitude) async {
    final response = await http.get(Uri.parse(
        '${Variables.baseUrl}/v4/weather/forecast?location=$latitude,$longitude&apikey=${Variables.apiKey}'));

    if (response.statusCode == 200) {
      return Right(WeatherListResponse.fromJson(response.body));
    } else {
      return Left('Failed to fetch weather');
    }
  }
}
