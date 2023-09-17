import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils.dart';

part 'timer_option.freezed.dart';

@freezed
class TimerOption with _$TimerOption {
  factory TimerOption({
    required final String label,
    required final int startCounter,
  }) = _TimerOption;

  factory TimerOption.none() => TimerOption(label: TimerCameraMessages.none, startCounter: 0);
  factory TimerOption.threeSec() => TimerOption(label: TimerCameraMessages.threeSec, startCounter: 3);
  factory TimerOption.tenSec() => TimerOption(label: TimerCameraMessages.tenSec, startCounter: 10);
}
