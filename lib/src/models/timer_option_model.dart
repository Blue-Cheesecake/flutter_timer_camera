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

  factory TimerOptionModel.none({final int? indicator}) => TimerOptionModel(
        label: TimerCameraMessages.none,
        startCounter: 0,
        indicator: indicator ?? 1,
      );
  factory TimerOptionModel.threeSec({final int? indicator}) => TimerOptionModel(
        label: TimerCameraMessages.threeSec,
        startCounter: 3,
        indicator: indicator ?? 2,
      );
  factory TimerOptionModel.tenSec({final int? indicator}) => TimerOptionModel(
        label: TimerCameraMessages.tenSec,
        startCounter: 10,
        indicator: indicator ?? 3,
      );

  factory TimerOptionModel.fromIndicator({required final int indicator}) {
    switch (indicator) {
      case 1:
        return TimerOptionModel.none();
      case 2:
        return TimerOptionModel.threeSec();
      case 3:
        return TimerOptionModel.tenSec();
      default:
        return TimerOptionModel.none();
    }
  }
}
