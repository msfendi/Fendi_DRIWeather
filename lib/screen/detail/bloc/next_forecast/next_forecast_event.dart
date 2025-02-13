part of 'next_forecast_bloc.dart';

@freezed
class NextForecastEvent with _$NextForecastEvent {
  const factory NextForecastEvent.started() = _Started;
  const factory NextForecastEvent.getNextForecast() = _GetNextForecast;
}
