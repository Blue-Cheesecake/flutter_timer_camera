import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/utils.dart';

part 'timer_option_model.freezed.dart';

@freezed
class TimerOptionModel with _$TimerOptionModel {
  factory TimerOptionModel({
    required final String label,
    required final int startCounter,
    required final int indicator,
  }) = _TimerOptionModel;

  factory TimerOptionModel.none({required final int indicator}) => TimerOptionModel(
        label: TimerCameraMessages.none,
        startCounter: 0,
        indicator: indicator,
      );
  factory TimerOptionModel.threeSec({required final int indicator}) => TimerOptionModel(
        label: TimerCameraMessages.threeSec,
        startCounter: 3,
        indicator: indicator,
      );
  factory TimerOptionModel.tenSec({required final int indicator}) => TimerOptionModel(
        label: TimerCameraMessages.tenSec,
        startCounter: 10,
        indicator: indicator,
      );
}
