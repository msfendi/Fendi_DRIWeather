part of 'find_location_bloc.dart';

@freezed
class FindLocationEvent with _$FindLocationEvent {
  const factory FindLocationEvent.started() = _Started;
  const factory FindLocationEvent.findLocation(String query) = _FindLocation;
  const factory FindLocationEvent.saveLatLong(
      {required String latitude, required String longitude}) = _SaveLatLong;
}
