part of 'now_location_bloc.dart';

@freezed
class NowLocationEvent with _$NowLocationEvent {
  const factory NowLocationEvent.started() = _Started;
  // tambahkan lat long
  const factory NowLocationEvent.getMyLocation() = _GetMyLocation;
  const factory NowLocationEvent.getMyCity() = _GetMyCity;
  const factory NowLocationEvent.changeMyLocation(
      {required String latitude,
      required String longitude}) = _ChangeMyLocation;
}
