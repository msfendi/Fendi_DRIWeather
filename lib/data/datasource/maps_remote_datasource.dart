import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app_rekadigi/data/models/responses/find_location_response.dart';
import 'package:weather_app_rekadigi/data/models/responses/my_location_response.dart';

import '../../core/constant/variable.dart';

class MapsRemoteDatasource {
  Future<Either<String, List<FindLocationResponse>>> getLatLongByLocation(
      String address) async {
    final response = await http.get(Uri.parse(
        '${Variables.mapsUrl}/search?q=$address&api_key=${Variables.apiKey_Geocoding}'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = jsonDecode(response.body);
      final List<FindLocationResponse> locationsList = jsonList
          .take(3)
          .map((json) => FindLocationResponse.fromJson(json))
          .toList();
      return Right(locationsList);
    } else {
      return Left('Failed to get some location');
    }
  }

  Future<Either<String, MyLocationResponse>> getMyLocationCity(
      String latitude, String longitude) async {
    final response = await http.get(Uri.parse(
        '${Variables.mapsUrl}/reverse?lat=$latitude&lon=$longitude&api_key=${Variables.apiKey_Geocoding}'));

    if (response.statusCode == 200) {
      return Right(MyLocationResponse.fromJson(response.body));
    } else {
      return Left('Undefined Loc');
    }
  }
}
