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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraController cameraController,
            int cameraOptionIndex, XFile? capturedImage)
        normal,
    required TResult Function() switching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CameraController cameraController, int cameraOptionIndex,
            XFile? capturedImage)?
        normal,
    TResult? Function()? switching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraController cameraController, int cameraOptionIndex,
            XFile? capturedImage)?
        normal,
    TResult Function()? switching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimerCameraStateNormal value) normal,
    required TResult Function(_TimerCameraStateSwitching value) switching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimerCameraStateNormal value)? normal,
    TResult? Function(_TimerCameraStateSwitching value)? switching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimerCameraStateNormal value)? normal,
    TResult Function(_TimerCameraStateSwitching value)? switching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerCameraStateCopyWith<$Res> {
  factory $TimerCameraStateCopyWith(
          TimerCameraState value, $Res Function(TimerCameraState) then) =
      _$TimerCameraStateCopyWithImpl<$Res, TimerCameraState>;
}

/// @nodoc
class _$TimerCameraStateCopyWithImpl<$Res, $Val extends TimerCameraState>
    implements $TimerCameraStateCopyWith<$Res> {
  _$TimerCameraStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TimerCameraStateNormalCopyWith<$Res> {
  factory _$$_TimerCameraStateNormalCopyWith(_$_TimerCameraStateNormal value,
          $Res Function(_$_TimerCameraStateNormal) then) =
      __$$_TimerCameraStateNormalCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CameraController cameraController,
      int cameraOptionIndex,
      XFile? capturedImage});
}

/// @nodoc
class __$$_TimerCameraStateNormalCopyWithImpl<$Res>
    extends _$TimerCameraStateCopyWithImpl<$Res, _$_TimerCameraStateNormal>
    implements _$$_TimerCameraStateNormalCopyWith<$Res> {
  __$$_TimerCameraStateNormalCopyWithImpl(_$_TimerCameraStateNormal _value,
      $Res Function(_$_TimerCameraStateNormal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraController = null,
    Object? cameraOptionIndex = null,
    Object? capturedImage = freezed,
  }) {
    return _then(_$_TimerCameraStateNormal(
      cameraController: null == cameraController
          ? _value.cameraController
          : cameraController // ignore: cast_nullable_to_non_nullable
              as CameraController,
      cameraOptionIndex: null == cameraOptionIndex
          ? _value.cameraOptionIndex
          : cameraOptionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      capturedImage: freezed == capturedImage
          ? _value.capturedImage
          : capturedImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$_TimerCameraStateNormal extends _TimerCameraStateNormal {
  _$_TimerCameraStateNormal(
      {required this.cameraController,
      this.cameraOptionIndex = 0,
      this.capturedImage})
      : super._();

  @override
  final CameraController cameraController;
  @override
  @JsonKey()
  final int cameraOptionIndex;
  @override
  final XFile? capturedImage;

  @override
  String toString() {
    return 'TimerCameraState.normal(cameraController: $cameraController, cameraOptionIndex: $cameraOptionIndex, capturedImage: $capturedImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerCameraStateNormal &&
            (identical(other.cameraController, cameraController) ||
                other.cameraController == cameraController) &&
            (identical(other.cameraOptionIndex, cameraOptionIndex) ||
                other.cameraOptionIndex == cameraOptionIndex) &&
            (identical(other.capturedImage, capturedImage) ||
                other.capturedImage == capturedImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, cameraController, cameraOptionIndex, capturedImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimerCameraStateNormalCopyWith<_$_TimerCameraStateNormal> get copyWith =>
      __$$_TimerCameraStateNormalCopyWithImpl<_$_TimerCameraStateNormal>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraController cameraController,
            int cameraOptionIndex, XFile? capturedImage)
        normal,
    required TResult Function() switching,
  }) {
    return normal(cameraController, cameraOptionIndex, capturedImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CameraController cameraController, int cameraOptionIndex,
            XFile? capturedImage)?
        normal,
    TResult? Function()? switching,
  }) {
    return normal?.call(cameraController, cameraOptionIndex, capturedImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraController cameraController, int cameraOptionIndex,
            XFile? capturedImage)?
        normal,
    TResult Function()? switching,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(cameraController, cameraOptionIndex, capturedImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimerCameraStateNormal value) normal,
    required TResult Function(_TimerCameraStateSwitching value) switching,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimerCameraStateNormal value)? normal,
    TResult? Function(_TimerCameraStateSwitching value)? switching,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimerCameraStateNormal value)? normal,
    TResult Function(_TimerCameraStateSwitching value)? switching,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class _TimerCameraStateNormal extends TimerCameraState {
  factory _TimerCameraStateNormal(
      {required final CameraController cameraController,
      final int cameraOptionIndex,
      final XFile? capturedImage}) = _$_TimerCameraStateNormal;
  _TimerCameraStateNormal._() : super._();

  CameraController get cameraController;
  int get cameraOptionIndex;
  XFile? get capturedImage;
  @JsonKey(ignore: true)
  _$$_TimerCameraStateNormalCopyWith<_$_TimerCameraStateNormal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimerCameraStateSwitchingCopyWith<$Res> {
  factory _$$_TimerCameraStateSwitchingCopyWith(
          _$_TimerCameraStateSwitching value,
          $Res Function(_$_TimerCameraStateSwitching) then) =
      __$$_TimerCameraStateSwitchingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TimerCameraStateSwitchingCopyWithImpl<$Res>
    extends _$TimerCameraStateCopyWithImpl<$Res, _$_TimerCameraStateSwitching>
    implements _$$_TimerCameraStateSwitchingCopyWith<$Res> {
  __$$_TimerCameraStateSwitchingCopyWithImpl(
      _$_TimerCameraStateSwitching _value,
      $Res Function(_$_TimerCameraStateSwitching) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TimerCameraStateSwitching extends _TimerCameraStateSwitching {
  _$_TimerCameraStateSwitching() : super._();

  @override
  String toString() {
    return 'TimerCameraState.switching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerCameraStateSwitching);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraController cameraController,
            int cameraOptionIndex, XFile? capturedImage)
        normal,
    required TResult Function() switching,
  }) {
    return switching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CameraController cameraController, int cameraOptionIndex,
            XFile? capturedImage)?
        normal,
    TResult? Function()? switching,
  }) {
    return switching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraController cameraController, int cameraOptionIndex,
            XFile? capturedImage)?
        normal,
    TResult Function()? switching,
    required TResult orElse(),
  }) {
    if (switching != null) {
      return switching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimerCameraStateNormal value) normal,
    required TResult Function(_TimerCameraStateSwitching value) switching,
  }) {
    return switching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TimerCameraStateNormal value)? normal,
    TResult? Function(_TimerCameraStateSwitching value)? switching,
  }) {
    return switching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimerCameraStateNormal value)? normal,
    TResult Function(_TimerCameraStateSwitching value)? switching,
    required TResult orElse(),
  }) {
    if (switching != null) {
      return switching(this);
    }
    return orElse();
  }
}

abstract class _TimerCameraStateSwitching extends TimerCameraState {
  factory _TimerCameraStateSwitching() = _$_TimerCameraStateSwitching;
  _TimerCameraStateSwitching._() : super._();
}
