import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/utils.dart';

part 'timer_option_model.freezed.dart';

@freezed
class TimerOptionModel with _$TimerOptionModel {
  const factory TimerOptionModel({
    required final String label,
    required final int startCounter,
  }) = _TimerOptionModel;

  factory TimerOptionModel.none() => const TimerOptionModel(label: TimerCameraMessages.none, startCounter: 0);
  factory TimerOptionModel.threeSec() => const TimerOptionModel(label: TimerCameraMessages.threeSec, startCounter: 3);
  factory TimerOptionModel.tenSec() => const TimerOptionModel(label: TimerCameraMessages.tenSec, startCounter: 10);
}
