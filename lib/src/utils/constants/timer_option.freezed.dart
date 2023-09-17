// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimerOption {
  String get label => throw _privateConstructorUsedError;
  int get startCounter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerOptionCopyWith<TimerOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerOptionCopyWith<$Res> {
  factory $TimerOptionCopyWith(
          TimerOption value, $Res Function(TimerOption) then) =
      _$TimerOptionCopyWithImpl<$Res, TimerOption>;
  @useResult
  $Res call({String label, int startCounter});
}

/// @nodoc
class _$TimerOptionCopyWithImpl<$Res, $Val extends TimerOption>
    implements $TimerOptionCopyWith<$Res> {
  _$TimerOptionCopyWithImpl(this._value, this._then);

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
abstract class _$$_TimerOptionCopyWith<$Res>
    implements $TimerOptionCopyWith<$Res> {
  factory _$$_TimerOptionCopyWith(
          _$_TimerOption value, $Res Function(_$_TimerOption) then) =
      __$$_TimerOptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, int startCounter});
}

/// @nodoc
class __$$_TimerOptionCopyWithImpl<$Res>
    extends _$TimerOptionCopyWithImpl<$Res, _$_TimerOption>
    implements _$$_TimerOptionCopyWith<$Res> {
  __$$_TimerOptionCopyWithImpl(
      _$_TimerOption _value, $Res Function(_$_TimerOption) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? startCounter = null,
  }) {
    return _then(_$_TimerOption(
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

class _$_TimerOption implements _TimerOption {
  const _$_TimerOption({required this.label, required this.startCounter});

  @override
  final String label;
  @override
  final int startCounter;

  @override
  String toString() {
    return 'TimerOption(label: $label, startCounter: $startCounter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerOption &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.startCounter, startCounter) ||
                other.startCounter == startCounter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, startCounter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimerOptionCopyWith<_$_TimerOption> get copyWith =>
      __$$_TimerOptionCopyWithImpl<_$_TimerOption>(this, _$identity);
}

abstract class _TimerOption implements TimerOption {
  const factory _TimerOption(
      {required final String label,
      required final int startCounter}) = _$_TimerOption;

  @override
  String get label;
  @override
  int get startCounter;
  @override
  @JsonKey(ignore: true)
  _$$_TimerOptionCopyWith<_$_TimerOption> get copyWith =>
      throw _privateConstructorUsedError;
}
