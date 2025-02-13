part of 'today_forecast_bloc.dart';

@freezed
class TodayForecastState with _$TodayForecastState {
  const factory TodayForecastState.initial() = _Initial;
  const factory TodayForecastState.loading() = _Loading;
  const factory TodayForecastState.loaded(List<Hourly> hourlyWeatherToday) =
      _Loaded;
  const factory TodayForecastState.error(String message) = _Error;
}
