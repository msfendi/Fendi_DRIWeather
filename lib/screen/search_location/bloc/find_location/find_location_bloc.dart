import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_rekadigi/data/datasource/location_local_datasource.dart';
import 'package:weather_app_rekadigi/data/datasource/maps_remote_datasource.dart';
import 'package:weather_app_rekadigi/data/models/responses/find_location_response.dart';

part 'find_location_event.dart';
part 'find_location_state.dart';
part 'find_location_bloc.freezed.dart';

class FindLocationBloc extends Bloc<FindLocationEvent, FindLocationState> {
  final MapsRemoteDatasource mapsRemoteDatasource;
  final LocationLocalDatasource locationLocalDatasource;
  FindLocationBloc(this.mapsRemoteDatasource, this.locationLocalDatasource)
      : super(_Initial()) {
    on<_FindLocation>((event, emit) async {
      emit(_Loading());
      final result =
          await mapsRemoteDatasource.getLatLongByLocation(event.query);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });

    on<_SaveLatLong>((event, emit) async {
      emit(_Loading());
      await locationLocalDatasource.saveLatLong(
          event.latitude, event.longitude);

      final latitudeNow = await locationLocalDatasource.getLatitude();
      final longitudeNow = await locationLocalDatasource.getLongitude();

      print(latitudeNow);

      if (latitudeNow! == event.latitude && longitudeNow! == event.longitude) {
        emit(_SavedLocation('Location berhasil disimpan'));
      } else {
        emit(_Error('Gagal menyimpan location anda'));
      }
    });
  }
}
