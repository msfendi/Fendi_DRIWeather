part of 'next_forecast_bloc.dart';

@freezed
class NextForecastState with _$NextForecastState {
  const factory NextForecastState.initial() = _Initial;
  const factory NextForecastState.loading() = _Loading;
  const factory NextForecastState.loaded(List<Daily> dailyForecastWeather) =
      _Loaded;
  const factory NextForecastState.error(String message) = _Error;
}
