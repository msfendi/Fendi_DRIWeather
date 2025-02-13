part of 'weather_today_bloc.dart';

@freezed
class WeatherTodayEvent with _$WeatherTodayEvent {
  const factory WeatherTodayEvent.started() = _Started;
  const factory WeatherTodayEvent.getWeatherToday() = _getWeatherToday;
}
