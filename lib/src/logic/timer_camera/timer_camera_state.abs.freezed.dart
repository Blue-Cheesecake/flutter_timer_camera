// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_camera_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimerCameraState {
  CameraDescription? get cameraDescription =>
      throw _privateConstructorUsedError;
  XFile? get capturedImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerCameraStateCopyWith<TimerCameraState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerCameraStateCopyWith<$Res> {
  factory $TimerCameraStateCopyWith(
          TimerCameraState value, $Res Function(TimerCameraState) then) =
      _$TimerCameraStateCopyWithImpl<$Res, TimerCameraState>;
  @useResult
  $Res call({CameraDescription? cameraDescription, XFile? capturedImage});
}

/// @nodoc
class _$TimerCameraStateCopyWithImpl<$Res, $Val extends TimerCameraState>
    implements $TimerCameraStateCopyWith<$Res> {
  _$TimerCameraStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraDescription = freezed,
    Object? capturedImage = freezed,
  }) {
    return _then(_value.copyWith(
      cameraDescription: freezed == cameraDescription
          ? _value.cameraDescription
          : cameraDescription // ignore: cast_nullable_to_non_nullable
              as CameraDescription?,
      capturedImage: freezed == capturedImage
          ? _value.capturedImage
          : capturedImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimerCameraStateCopyWith<$Res>
    implements $TimerCameraStateCopyWith<$Res> {
  factory _$$_TimerCameraStateCopyWith(
          _$_TimerCameraState value, $Res Function(_$_TimerCameraState) then) =
      __$$_TimerCameraStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CameraDescription? cameraDescription, XFile? capturedImage});
}

/// @nodoc
class __$$_TimerCameraStateCopyWithImpl<$Res>
    extends _$TimerCameraStateCopyWithImpl<$Res, _$_TimerCameraState>
    implements _$$_TimerCameraStateCopyWith<$Res> {
  __$$_TimerCameraStateCopyWithImpl(
      _$_TimerCameraState _value, $Res Function(_$_TimerCameraState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraDescription = freezed,
    Object? capturedImage = freezed,
  }) {
    return _then(_$_TimerCameraState(
      cameraDescription: freezed == cameraDescription
          ? _value.cameraDescription
          : cameraDescription // ignore: cast_nullable_to_non_nullable
              as CameraDescription?,
      capturedImage: freezed == capturedImage
          ? _value.capturedImage
          : capturedImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$_TimerCameraState implements _TimerCameraState {
  _$_TimerCameraState({this.cameraDescription, this.capturedImage});

  @override
  final CameraDescription? cameraDescription;
  @override
  final XFile? capturedImage;

  @override
  String toString() {
    return 'TimerCameraState(cameraDescription: $cameraDescription, capturedImage: $capturedImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerCameraState &&
            const DeepCollectionEquality()
                .equals(other.cameraDescription, cameraDescription) &&
            const DeepCollectionEquality()
                .equals(other.capturedImage, capturedImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cameraDescription),
      const DeepCollectionEquality().hash(capturedImage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimerCameraStateCopyWith<_$_TimerCameraState> get copyWith =>
      __$$_TimerCameraStateCopyWithImpl<_$_TimerCameraState>(this, _$identity);
}

abstract class _TimerCameraState implements TimerCameraState {
  factory _TimerCameraState(
      {final CameraDescription? cameraDescription,
      final XFile? capturedImage}) = _$_TimerCameraState;

  @override
  CameraDescription? get cameraDescription;
  @override
  XFile? get capturedImage;
  @override
  @JsonKey(ignore: true)
  _$$_TimerCameraStateCopyWith<_$_TimerCameraState> get copyWith =>
      throw _privateConstructorUsedError;
}
