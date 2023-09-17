import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils.dart';

part 'timer_option.freezed.dart';

@freezed
class TimerOption with _$TimerOption {
  const factory TimerOption({
    required final String label,
    required final int startCounter,
  }) = _TimerOption;

  factory TimerOption.none() => const TimerOption(label: TimerCameraMessages.none, startCounter: 0);
  factory TimerOption.threeSec() => const TimerOption(label: TimerCameraMessages.threeSec, startCounter: 3);
  factory TimerOption.tenSec() => const TimerOption(label: TimerCameraMessages.tenSec, startCounter: 10);
}
