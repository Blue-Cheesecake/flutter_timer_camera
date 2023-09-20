import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_timer_camera/src/logic/logic.dart';

import '../models/models.dart';

/// A widget that displays a segmented control for camera timer options.
///
/// This widget allows users to select a timer option for the camera.
/// The appearance and behavior of the segmented control can be customized
/// using the [timerOptionStyleParams].
class CameraTimerOptionsWD extends ConsumerWidget {
  const CameraTimerOptionsWD({required this.timerOptionStyleParams, Key? key}) : super(key: key);

  /// The style parameters for customizing the appearance and behavior of the segmented control passed from User
  ///
  final TimerOptionStyleParamsModel timerOptionStyleParams;

  /// Returns the default text style for the active timer option.
  ///
  TextStyle _activeTextStyle() {
    return const TextStyle(fontSize: 13);
  }

  /// Returns the default text style for the inactive timer option.
  ///
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
      // TODO: add children from client
      children: {
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
