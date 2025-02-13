part of 'now_location_bloc.dart';

@freezed
class NowLocationState with _$NowLocationState {
  const factory NowLocationState.initial() = _Initial;
  const factory NowLocationState.loading() = _Loading;
  const factory NowLocationState.loaded(Position position) = _Loaded;
  const factory NowLocationState.changedLocation(
      String latitude, String longitude) = _ChangedLocation;
  const factory NowLocationState.loadedCityName(String city) = _LoadedCityName;
  const factory NowLocationState.error() = _Error;
}
