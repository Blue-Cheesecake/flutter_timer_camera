import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_timer_camera/src/logic/logic.dart';

import '../models/models.dart';

class CameraTimerOptionsWD extends ConsumerWidget {
  const CameraTimerOptionsWD({required this.timerOptionStyleParams, Key? key}) : super(key: key);

  final TimerOptionStyleParamsModel timerOptionStyleParams;

  TextStyle _activeTextStyle() {
    return const TextStyle(fontSize: 13);
  }

  TextStyle _inactiveTextStyle() {
    return const TextStyle(fontSize: 13, color: Colors.white);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTimerIndicator = ref.watch(timerCameraStateProvider.select((value) => value.timerOptionIndicator));
    final timerNone = TimerOptionModel.none(indicator: 1);
    final threeSec = TimerOptionModel.threeSec(indicator: 2);
    final tenSec = TimerOptionModel.tenSec(indicator: 3);

    return CustomSlidingSegmentedControl(
      children: timerOptionStyleParams.children ??
          {
            1: Text(
              timerNone.label,
              style: timerNone.indicator == currentTimerIndicator ? _activeTextStyle() : _inactiveTextStyle(),
            ),
            2: Text(
              threeSec.label,
              style: threeSec.indicator == currentTimerIndicator ? _activeTextStyle() : _inactiveTextStyle(),
            ),
            3: Text(
              tenSec.label,
              style: tenSec.indicator == currentTimerIndicator ? _activeTextStyle() : _inactiveTextStyle(),
            ),
          },
      decoration: timerOptionStyleParams.decoration ??
          BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(8),
          ),
      thumbDecoration: timerOptionStyleParams.thumbDecoration ??
          BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
      duration: timerOptionStyleParams.duration ?? const Duration(milliseconds: 150),
      curve: timerOptionStyleParams.curve ?? Curves.easeInToLinear,
      isDisabled: ref.watch(timerCameraStateProvider.select((value) => value.isCounting)),
      onValueChanged: (value) {
        ref
            .read(timerCameraStateProvider.notifier)
            .updateTimerOptionIndicator(TimerOptionModel.fromIndicator(indicator: value));
      },
    );
  }
}
