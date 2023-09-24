import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/utils.dart';
import 'timer_option.dart';

part 'timer_option_model.freezed.dart';

/// Represents the timer option model with label, start counter, and indicator.
///
@freezed
class TimerOptionModel with _$TimerOptionModel {
  factory TimerOptionModel({
    required final String label,
    required final int startCounter,
    required final int indicator,
  }) = _TimerOptionModel;

  /// Default Factory constructor for the "none" timer option.
  ///
  factory TimerOptionModel.none({final int? indicator}) => TimerOptionModel(
        label: TimerCameraMessages.none,
        startCounter: 0,
        indicator: indicator ?? 1,
      );

  /// Default Factory constructor for the "three seconds" timer option.
  ///
  factory TimerOptionModel.threeSec({final int? indicator}) => TimerOptionModel(
        label: TimerCameraMessages.threeSec,
        startCounter: 3,
        indicator: indicator ?? 2,
      );

  /// Default Factory constructor for the "ten seconds" timer option.
  ///
  factory TimerOptionModel.tenSec({final int? indicator}) => TimerOptionModel(
        label: TimerCameraMessages.tenSec,
        startCounter: 10,
        indicator: indicator ?? 3,
      );

  /// Default Factory constructor to create a [TimerOptionModel] from an indicator.
  ///
  /// NOTE: how can user use this option?
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

  factory TimerOptionModel.fromUserTimer({required TimerOption option, required int indicator}) {
    return TimerOptionModel(label: option.label, startCounter: option.startCounter, indicator: indicator);
  }
}
