import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app_rekadigi/data/datasource/location_local_datasource.dart';
import 'package:weather_app_rekadigi/data/datasource/location_remote_datasource.dart';
import 'package:weather_app_rekadigi/data/datasource/maps_remote_datasource.dart';

part 'now_location_event.dart';
part 'now_location_state.dart';
part 'now_location_bloc.freezed.dart';

class NowLocationBloc extends Bloc<NowLocationEvent, NowLocationState> {
  final LocationRemoteDatasource locationRemoteDatasource;
  final LocationLocalDatasource locationLocalDatasource;
  final MapsRemoteDatasource mapsRemoteDatasource;
  NowLocationBloc(this.locationRemoteDatasource, this.locationLocalDatasource,
      this.mapsRemoteDatasource)
      : super(_Initial()) {
    on<_GetMyLocation>((event, emit) async {
      try {
        emit(_Loading());
        final locationData = await locationRemoteDatasource.determinePosition();
        await locationLocalDatasource.saveLatLong(
            locationData.latitude.toString(),
            locationData.longitude.toString());
        emit(_Loaded(locationData));
      } catch (e) {
        emit(_Error());
      }
    });

    on<_GetMyCity>((event, emit) async {
      try {
        emit(_Loading());
        final locationData = await locationRemoteDatasource.determinePosition();
        final result = await mapsRemoteDatasource.getMyLocationCity(
            locationData.latitude.toString(),
            locationData.longitude.toString());

        result.fold((l) => emit(_Error()),
            (r) => emit(_LoadedCityName(r.address.city)));
      } catch (e) {
        emit(_Error());
      }
    });

    on<_ChangeMyLocation>((event, emit) async {
      emit(_Loading());
      try {
        final locationData = await locationRemoteDatasource.determinePosition();
        await locationLocalDatasource.saveLatLong(
            event.latitude, event.longitude);
        emit(_ChangedLocation(event.latitude, event.longitude));
      } catch (e) {
        emit(_Error());
      }
    });
  }
}
