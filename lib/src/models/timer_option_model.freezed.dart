// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimerOptionModel {
  String get label => throw _privateConstructorUsedError;
  int get startCounter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerOptionModelCopyWith<TimerOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerOptionModelCopyWith<$Res> {
  factory $TimerOptionModelCopyWith(
          TimerOptionModel value, $Res Function(TimerOptionModel) then) =
      _$TimerOptionModelCopyWithImpl<$Res, TimerOptionModel>;
  @useResult
  $Res call({String label, int startCounter});
}

/// @nodoc
class _$TimerOptionModelCopyWithImpl<$Res, $Val extends TimerOptionModel>
    implements $TimerOptionModelCopyWith<$Res> {
  _$TimerOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? startCounter = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      startCounter: null == startCounter
          ? _value.startCounter
          : startCounter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimerOptionModelCopyWith<$Res>
    implements $TimerOptionModelCopyWith<$Res> {
  factory _$$_TimerOptionModelCopyWith(
          _$_TimerOptionModel value, $Res Function(_$_TimerOptionModel) then) =
      __$$_TimerOptionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, int startCounter});
}

/// @nodoc
class __$$_TimerOptionModelCopyWithImpl<$Res>
    extends _$TimerOptionModelCopyWithImpl<$Res, _$_TimerOptionModel>
    implements _$$_TimerOptionModelCopyWith<$Res> {
  __$$_TimerOptionModelCopyWithImpl(
      _$_TimerOptionModel _value, $Res Function(_$_TimerOptionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? startCounter = null,
  }) {
    return _then(_$_TimerOptionModel(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      startCounter: null == startCounter
          ? _value.startCounter
          : startCounter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TimerOptionModel implements _TimerOptionModel {
  const _$_TimerOptionModel({required this.label, required this.startCounter});

  @override
  final String label;
  @override
  final int startCounter;

  @override
  String toString() {
    return 'TimerOptionModel(label: $label, startCounter: $startCounter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerOptionModel &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.startCounter, startCounter) ||
                other.startCounter == startCounter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, startCounter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimerOptionModelCopyWith<_$_TimerOptionModel> get copyWith =>
      __$$_TimerOptionModelCopyWithImpl<_$_TimerOptionModel>(this, _$identity);
}

abstract class _TimerOptionModel implements TimerOptionModel {
  const factory _TimerOptionModel(
      {required final String label,
      required final int startCounter}) = _$_TimerOptionModel;

  @override
  String get label;
  @override
  int get startCounter;
  @override
  @JsonKey(ignore: true)
  _$$_TimerOptionModelCopyWith<_$_TimerOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
