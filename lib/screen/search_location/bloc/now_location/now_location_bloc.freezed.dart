// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'now_location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NowLocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getMyLocation,
    required TResult Function() getMyCity,
    required TResult Function(String latitude, String longitude)
        changeMyLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getMyLocation,
    TResult? Function()? getMyCity,
    TResult? Function(String latitude, String longitude)? changeMyLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getMyLocation,
    TResult Function()? getMyCity,
    TResult Function(String latitude, String longitude)? changeMyLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetMyLocation value) getMyLocation,
    required TResult Function(_GetMyCity value) getMyCity,
    required TResult Function(_ChangeMyLocation value) changeMyLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMyLocation value)? getMyLocation,
    TResult? Function(_GetMyCity value)? getMyCity,
    TResult? Function(_ChangeMyLocation value)? changeMyLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMyLocation value)? getMyLocation,
    TResult Function(_GetMyCity value)? getMyCity,
    TResult Function(_ChangeMyLocation value)? changeMyLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowLocationEventCopyWith<$Res> {
  factory $NowLocationEventCopyWith(
          NowLocationEvent value, $Res Function(NowLocationEvent) then) =
      _$NowLocationEventCopyWithImpl<$Res, NowLocationEvent>;
}

/// @nodoc
class _$NowLocationEventCopyWithImpl<$Res, $Val extends NowLocationEvent>
    implements $NowLocationEventCopyWith<$Res> {
  _$NowLocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NowLocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$NowLocationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowLocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'NowLocationEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getMyLocation,
    required TResult Function() getMyCity,
    required TResult Function(String latitude, String longitude)
        changeMyLocation,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getMyLocation,
    TResult? Function()? getMyCity,
    TResult? Function(String latitude, String longitude)? changeMyLocation,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getMyLocation,
    TResult Function()? getMyCity,
    TResult Function(String latitude, String longitude)? changeMyLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetMyLocation value) getMyLocation,
    required TResult Function(_GetMyCity value) getMyCity,
    required TResult Function(_ChangeMyLocation value) changeMyLocation,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMyLocation value)? getMyLocation,
    TResult? Function(_GetMyCity value)? getMyCity,
    TResult? Function(_ChangeMyLocation value)? changeMyLocation,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMyLocation value)? getMyLocation,
    TResult Function(_GetMyCity value)? getMyCity,
    TResult Function(_ChangeMyLocation value)? changeMyLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NowLocationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetMyLocationImplCopyWith<$Res> {
  factory _$$GetMyLocationImplCopyWith(
          _$GetMyLocationImpl value, $Res Function(_$GetMyLocationImpl) then) =
      __$$GetMyLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMyLocationImplCopyWithImpl<$Res>
    extends _$NowLocationEventCopyWithImpl<$Res, _$GetMyLocationImpl>
    implements _$$GetMyLocationImplCopyWith<$Res> {
  __$$GetMyLocationImplCopyWithImpl(
      _$GetMyLocationImpl _value, $Res Function(_$GetMyLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowLocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetMyLocationImpl implements _GetMyLocation {
  const _$GetMyLocationImpl();

  @override
  String toString() {
    return 'NowLocationEvent.getMyLocation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMyLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getMyLocation,
    required TResult Function() getMyCity,
    required TResult Function(String latitude, String longitude)
        changeMyLocation,
  }) {
    return getMyLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getMyLocation,
    TResult? Function()? getMyCity,
    TResult? Function(String latitude, String longitude)? changeMyLocation,
  }) {
    return getMyLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getMyLocation,
    TResult Function()? getMyCity,
    TResult Function(String latitude, String longitude)? changeMyLocation,
    required TResult orElse(),
  }) {
    if (getMyLocation != null) {
      return getMyLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetMyLocation value) getMyLocation,
    required TResult Function(_GetMyCity value) getMyCity,
    required TResult Function(_ChangeMyLocation value) changeMyLocation,
  }) {
    return getMyLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMyLocation value)? getMyLocation,
    TResult? Function(_GetMyCity value)? getMyCity,
    TResult? Function(_ChangeMyLocation value)? changeMyLocation,
  }) {
    return getMyLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMyLocation value)? getMyLocation,
    TResult Function(_GetMyCity value)? getMyCity,
    TResult Function(_ChangeMyLocation value)? changeMyLocation,
    required TResult orElse(),
  }) {
    if (getMyLocation != null) {
      return getMyLocation(this);
    }
    return orElse();
  }
}

abstract class _GetMyLocation implements NowLocationEvent {
  const factory _GetMyLocation() = _$GetMyLocationImpl;
}

/// @nodoc
abstract class _$$GetMyCityImplCopyWith<$Res> {
  factory _$$GetMyCityImplCopyWith(
          _$GetMyCityImpl value, $Res Function(_$GetMyCityImpl) then) =
      __$$GetMyCityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMyCityImplCopyWithImpl<$Res>
    extends _$NowLocationEventCopyWithImpl<$Res, _$GetMyCityImpl>
    implements _$$GetMyCityImplCopyWith<$Res> {
  __$$GetMyCityImplCopyWithImpl(
      _$GetMyCityImpl _value, $Res Function(_$GetMyCityImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowLocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetMyCityImpl implements _GetMyCity {
  const _$GetMyCityImpl();

  @override
  String toString() {
    return 'NowLocationEvent.getMyCity()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMyCityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getMyLocation,
    required TResult Function() getMyCity,
    required TResult Function(String latitude, String longitude)
        changeMyLocation,
  }) {
    return getMyCity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getMyLocation,
    TResult? Function()? getMyCity,
    TResult? Function(String latitude, String longitude)? changeMyLocation,
  }) {
    return getMyCity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getMyLocation,
    TResult Function()? getMyCity,
    TResult Function(String latitude, String longitude)? changeMyLocation,
    required TResult orElse(),
  }) {
    if (getMyCity != null) {
      return getMyCity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetMyLocation value) getMyLocation,
    required TResult Function(_GetMyCity value) getMyCity,
    required TResult Function(_ChangeMyLocation value) changeMyLocation,
  }) {
    return getMyCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMyLocation value)? getMyLocation,
    TResult? Function(_GetMyCity value)? getMyCity,
    TResult? Function(_ChangeMyLocation value)? changeMyLocation,
  }) {
    return getMyCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMyLocation value)? getMyLocation,
    TResult Function(_GetMyCity value)? getMyCity,
    TResult Function(_ChangeMyLocation value)? changeMyLocation,
    required TResult orElse(),
  }) {
    if (getMyCity != null) {
      return getMyCity(this);
    }
    return orElse();
  }
}

abstract class _GetMyCity implements NowLocationEvent {
  const factory _GetMyCity() = _$GetMyCityImpl;
}

/// @nodoc
abstract class _$$ChangeMyLocationImplCopyWith<$Res> {
  factory _$$ChangeMyLocationImplCopyWith(_$ChangeMyLocationImpl value,
          $Res Function(_$ChangeMyLocationImpl) then) =
      __$$ChangeMyLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String latitude, String longitude});
}

/// @nodoc
class __$$ChangeMyLocationImplCopyWithImpl<$Res>
    extends _$NowLocationEventCopyWithImpl<$Res, _$ChangeMyLocationImpl>
    implements _$$ChangeMyLocationImplCopyWith<$Res> {
  __$$ChangeMyLocationImplCopyWithImpl(_$ChangeMyLocationImpl _value,
      $Res Function(_$ChangeMyLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$ChangeMyLocationImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeMyLocationImpl implements _ChangeMyLocation {
  const _$ChangeMyLocationImpl(
      {required this.latitude, required this.longitude});

  @override
  final String latitude;
  @override
  final String longitude;

  @override
  String toString() {
    return 'NowLocationEvent.changeMyLocation(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeMyLocationImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  /// Create a copy of NowLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeMyLocationImplCopyWith<_$ChangeMyLocationImpl> get copyWith =>
      __$$ChangeMyLocationImplCopyWithImpl<_$ChangeMyLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getMyLocation,
    required TResult Function() getMyCity,
    required TResult Function(String latitude, String longitude)
        changeMyLocation,
  }) {
    return changeMyLocation(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getMyLocation,
    TResult? Function()? getMyCity,
    TResult? Function(String latitude, String longitude)? changeMyLocation,
  }) {
    return changeMyLocation?.call(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getMyLocation,
    TResult Function()? getMyCity,
    TResult Function(String latitude, String longitude)? changeMyLocation,
    required TResult orElse(),
  }) {
    if (changeMyLocation != null) {
      return changeMyLocation(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetMyLocation value) getMyLocation,
    required TResult Function(_GetMyCity value) getMyCity,
    required TResult Function(_ChangeMyLocation value) changeMyLocation,
  }) {
    return changeMyLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetMyLocation value)? getMyLocation,
    TResult? Function(_GetMyCity value)? getMyCity,
    TResult? Function(_ChangeMyLocation value)? changeMyLocation,
  }) {
    return changeMyLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMyLocation value)? getMyLocation,
    TResult Function(_GetMyCity value)? getMyCity,
    TResult Function(_ChangeMyLocation value)? changeMyLocation,
    required TResult orElse(),
  }) {
    if (changeMyLocation != null) {
      return changeMyLocation(this);
    }
    return orElse();
  }
}

abstract class _ChangeMyLocation implements NowLocationEvent {
  const factory _ChangeMyLocation(
      {required final String latitude,
      required final String longitude}) = _$ChangeMyLocationImpl;

  String get latitude;
  String get longitude;

  /// Create a copy of NowLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeMyLocationImplCopyWith<_$ChangeMyLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NowLocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position) loaded,
    required TResult Function(String latitude, String longitude)
        changedLocation,
    required TResult Function(String city) loadedCityName,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position)? loaded,
    TResult? Function(String latitude, String longitude)? changedLocation,
    TResult? Function(String city)? loadedCityName,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position)? loaded,
    TResult Function(String latitude, String longitude)? changedLocation,
    TResult Function(String city)? loadedCityName,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ChangedLocation value) changedLocation,
    required TResult Function(_LoadedCityName value) loadedCityName,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ChangedLocation value)? changedLocation,
    TResult? Function(_LoadedCityName value)? loadedCityName,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ChangedLocation value)? changedLocation,
    TResult Function(_LoadedCityName value)? loadedCityName,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowLocationStateCopyWith<$Res> {
  factory $NowLocationStateCopyWith(
          NowLocationState value, $Res Function(NowLocationState) then) =
      _$NowLocationStateCopyWithImpl<$Res, NowLocationState>;
}

/// @nodoc
class _$NowLocationStateCopyWithImpl<$Res, $Val extends NowLocationState>
    implements $NowLocationStateCopyWith<$Res> {
  _$NowLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NowLocationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NowLocationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowLocationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'NowLocationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position) loaded,
    required TResult Function(String latitude, String longitude)
        changedLocation,
    required TResult Function(String city) loadedCityName,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position)? loaded,
    TResult? Function(String latitude, String longitude)? changedLocation,
    TResult? Function(String city)? loadedCityName,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position)? loaded,
    TResult Function(String latitude, String longitude)? changedLocation,
    TResult Function(String city)? loadedCityName,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ChangedLocation value) changedLocation,
    required TResult Function(_LoadedCityName value) loadedCityName,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ChangedLocation value)? changedLocation,
    TResult? Function(_LoadedCityName value)? loadedCityName,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ChangedLocation value)? changedLocation,
    TResult Function(_LoadedCityName value)? loadedCityName,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NowLocationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$NowLocationStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowLocationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'NowLocationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position) loaded,
    required TResult Function(String latitude, String longitude)
        changedLocation,
    required TResult Function(String city) loadedCityName,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position)? loaded,
    TResult? Function(String latitude, String longitude)? changedLocation,
    TResult? Function(String city)? loadedCityName,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position)? loaded,
    TResult Function(String latitude, String longitude)? changedLocation,
    TResult Function(String city)? loadedCityName,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ChangedLocation value) changedLocation,
    required TResult Function(_LoadedCityName value) loadedCityName,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ChangedLocation value)? changedLocation,
    TResult? Function(_LoadedCityName value)? loadedCityName,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ChangedLocation value)? changedLocation,
    TResult Function(_LoadedCityName value)? loadedCityName,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NowLocationState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Position position});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$NowLocationStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$LoadedImpl(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.position);

  @override
  final Position position;

  @override
  String toString() {
    return 'NowLocationState.loaded(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  /// Create a copy of NowLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position) loaded,
    required TResult Function(String latitude, String longitude)
        changedLocation,
    required TResult Function(String city) loadedCityName,
    required TResult Function() error,
  }) {
    return loaded(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position)? loaded,
    TResult? Function(String latitude, String longitude)? changedLocation,
    TResult? Function(String city)? loadedCityName,
    TResult? Function()? error,
  }) {
    return loaded?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position)? loaded,
    TResult Function(String latitude, String longitude)? changedLocation,
    TResult Function(String city)? loadedCityName,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ChangedLocation value) changedLocation,
    required TResult Function(_LoadedCityName value) loadedCityName,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ChangedLocation value)? changedLocation,
    TResult? Function(_LoadedCityName value)? loadedCityName,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ChangedLocation value)? changedLocation,
    TResult Function(_LoadedCityName value)? loadedCityName,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements NowLocationState {
  const factory _Loaded(final Position position) = _$LoadedImpl;

  Position get position;

  /// Create a copy of NowLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangedLocationImplCopyWith<$Res> {
  factory _$$ChangedLocationImplCopyWith(_$ChangedLocationImpl value,
          $Res Function(_$ChangedLocationImpl) then) =
      __$$ChangedLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String latitude, String longitude});
}

/// @nodoc
class __$$ChangedLocationImplCopyWithImpl<$Res>
    extends _$NowLocationStateCopyWithImpl<$Res, _$ChangedLocationImpl>
    implements _$$ChangedLocationImplCopyWith<$Res> {
  __$$ChangedLocationImplCopyWithImpl(
      _$ChangedLocationImpl _value, $Res Function(_$ChangedLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$ChangedLocationImpl(
      null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangedLocationImpl implements _ChangedLocation {
  const _$ChangedLocationImpl(this.latitude, this.longitude);

  @override
  final String latitude;
  @override
  final String longitude;

  @override
  String toString() {
    return 'NowLocationState.changedLocation(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedLocationImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  /// Create a copy of NowLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedLocationImplCopyWith<_$ChangedLocationImpl> get copyWith =>
      __$$ChangedLocationImplCopyWithImpl<_$ChangedLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position) loaded,
    required TResult Function(String latitude, String longitude)
        changedLocation,
    required TResult Function(String city) loadedCityName,
    required TResult Function() error,
  }) {
    return changedLocation(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position)? loaded,
    TResult? Function(String latitude, String longitude)? changedLocation,
    TResult? Function(String city)? loadedCityName,
    TResult? Function()? error,
  }) {
    return changedLocation?.call(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position)? loaded,
    TResult Function(String latitude, String longitude)? changedLocation,
    TResult Function(String city)? loadedCityName,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (changedLocation != null) {
      return changedLocation(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ChangedLocation value) changedLocation,
    required TResult Function(_LoadedCityName value) loadedCityName,
    required TResult Function(_Error value) error,
  }) {
    return changedLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ChangedLocation value)? changedLocation,
    TResult? Function(_LoadedCityName value)? loadedCityName,
    TResult? Function(_Error value)? error,
  }) {
    return changedLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ChangedLocation value)? changedLocation,
    TResult Function(_LoadedCityName value)? loadedCityName,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (changedLocation != null) {
      return changedLocation(this);
    }
    return orElse();
  }
}

abstract class _ChangedLocation implements NowLocationState {
  const factory _ChangedLocation(
      final String latitude, final String longitude) = _$ChangedLocationImpl;

  String get latitude;
  String get longitude;

  /// Create a copy of NowLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangedLocationImplCopyWith<_$ChangedLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedCityNameImplCopyWith<$Res> {
  factory _$$LoadedCityNameImplCopyWith(_$LoadedCityNameImpl value,
          $Res Function(_$LoadedCityNameImpl) then) =
      __$$LoadedCityNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String city});
}

/// @nodoc
class __$$LoadedCityNameImplCopyWithImpl<$Res>
    extends _$NowLocationStateCopyWithImpl<$Res, _$LoadedCityNameImpl>
    implements _$$LoadedCityNameImplCopyWith<$Res> {
  __$$LoadedCityNameImplCopyWithImpl(
      _$LoadedCityNameImpl _value, $Res Function(_$LoadedCityNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
  }) {
    return _then(_$LoadedCityNameImpl(
      null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedCityNameImpl implements _LoadedCityName {
  const _$LoadedCityNameImpl(this.city);

  @override
  final String city;

  @override
  String toString() {
    return 'NowLocationState.loadedCityName(city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedCityNameImpl &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city);

  /// Create a copy of NowLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCityNameImplCopyWith<_$LoadedCityNameImpl> get copyWith =>
      __$$LoadedCityNameImplCopyWithImpl<_$LoadedCityNameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position) loaded,
    required TResult Function(String latitude, String longitude)
        changedLocation,
    required TResult Function(String city) loadedCityName,
    required TResult Function() error,
  }) {
    return loadedCityName(city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position)? loaded,
    TResult? Function(String latitude, String longitude)? changedLocation,
    TResult? Function(String city)? loadedCityName,
    TResult? Function()? error,
  }) {
    return loadedCityName?.call(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position)? loaded,
    TResult Function(String latitude, String longitude)? changedLocation,
    TResult Function(String city)? loadedCityName,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadedCityName != null) {
      return loadedCityName(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ChangedLocation value) changedLocation,
    required TResult Function(_LoadedCityName value) loadedCityName,
    required TResult Function(_Error value) error,
  }) {
    return loadedCityName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ChangedLocation value)? changedLocation,
    TResult? Function(_LoadedCityName value)? loadedCityName,
    TResult? Function(_Error value)? error,
  }) {
    return loadedCityName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ChangedLocation value)? changedLocation,
    TResult Function(_LoadedCityName value)? loadedCityName,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedCityName != null) {
      return loadedCityName(this);
    }
    return orElse();
  }
}

abstract class _LoadedCityName implements NowLocationState {
  const factory _LoadedCityName(final String city) = _$LoadedCityNameImpl;

  String get city;

  /// Create a copy of NowLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedCityNameImplCopyWith<_$LoadedCityNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$NowLocationStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of NowLocationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'NowLocationState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position) loaded,
    required TResult Function(String latitude, String longitude)
        changedLocation,
    required TResult Function(String city) loadedCityName,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position)? loaded,
    TResult? Function(String latitude, String longitude)? changedLocation,
    TResult? Function(String city)? loadedCityName,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position)? loaded,
    TResult Function(String latitude, String longitude)? changedLocation,
    TResult Function(String city)? loadedCityName,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ChangedLocation value) changedLocation,
    required TResult Function(_LoadedCityName value) loadedCityName,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ChangedLocation value)? changedLocation,
    TResult? Function(_LoadedCityName value)? loadedCityName,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ChangedLocation value)? changedLocation,
    TResult Function(_LoadedCityName value)? loadedCityName,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements NowLocationState {
  const factory _Error() = _$ErrorImpl;
}
