part of 'today_forecast_bloc.dart';

@freezed
class TodayForecastEvent with _$TodayForecastEvent {
  const factory TodayForecastEvent.started() = _Started;
  const factory TodayForecastEvent.getWeatherToday() = _getWeatherToday;
}
