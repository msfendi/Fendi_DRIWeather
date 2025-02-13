part of 'find_location_bloc.dart';

@freezed
class FindLocationState with _$FindLocationState {
  const factory FindLocationState.initial() = _Initial;
  const factory FindLocationState.loading() = _Loading;
  const factory FindLocationState.loaded(
      List<FindLocationResponse> locationList) = _Loaded;
  const factory FindLocationState.savedLocation(String message) =
      _SavedLocation;
  const factory FindLocationState.error(String message) = _Error;
}
