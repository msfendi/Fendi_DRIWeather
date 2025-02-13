part of 'weather_today_bloc.dart';

@freezed
class WeatherTodayState with _$WeatherTodayState {
  const factory WeatherTodayState.initial() = _Initial;
  const factory WeatherTodayState.loading() = _Loading;
  const factory WeatherTodayState.loaded(Daily dailyWeather) = _Loaded;
  const factory WeatherTodayState.error(String message) = _Error;
}
