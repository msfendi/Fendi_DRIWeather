import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_rekadigi/data/datasource/location_local_datasource.dart';
import 'package:weather_app_rekadigi/data/datasource/location_remote_datasource.dart';
import 'package:weather_app_rekadigi/data/datasource/weather_remote_datasource.dart';
import 'package:weather_app_rekadigi/data/models/responses/weather_list_response.dart';

part 'weather_today_event.dart';
part 'weather_today_state.dart';
part 'weather_today_bloc.freezed.dart';

class WeatherTodayBloc extends Bloc<WeatherTodayEvent, WeatherTodayState> {
  final WeatherRemoteDatasource weatherRemoteDatasource;
  final LocationLocalDatasource locationLocalDatasource;
  final LocationRemoteDatasource locationRemoteDatasource;
  WeatherTodayBloc(this.weatherRemoteDatasource, this.locationLocalDatasource,
      this.locationRemoteDatasource)
      : super(_Initial()) {
    on<_getWeatherToday>((event, emit) async {
      emit(_Loading());
      final myLocation = await locationRemoteDatasource.determinePosition();
      final recentLatitude = await locationLocalDatasource.getLatitude();
      final recentLongitude = await locationLocalDatasource.getLongitude();
      final result = await weatherRemoteDatasource.getAllWeather(
          myLocation.latitude.toString(), myLocation.longitude.toString());
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.timelines!.daily!.elementAt(1))),
      );
    });
  }
}
