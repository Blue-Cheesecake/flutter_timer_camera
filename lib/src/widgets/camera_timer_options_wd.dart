import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/logic.dart';
import '../models/models.dart';

/// A widget that displays a segmented control for camera timer options.
///
/// This widget allows users to select a timer option for the camera.
/// The appearance and behavior of the segmented control can be customized
/// using the [timerOptionStyleParams].
class CameraTimerOptionsWD extends ConsumerStatefulWidget {
  const CameraTimerOptionsWD({
    required this.timerOptionStyleParams,
    required this.defaultTimerOptionIndex,
    this.timerOptions,
    Key? key,
  }) : super(key: key);

  /// The style parameters for customizing the appearance and behavior of the segmented control passed from User
  ///
  final TimerOptionStyleParamsModel timerOptionStyleParams;

  /// The List of TimerOption that will be displayed on [CameraScreenWD]
  ///
  /// The position of timer will be displayed from left to right.
  ///
  /// If this's not provided, the default option will be used
  final List<TimerOption>? timerOptions;

  /// The default index for Timer list
  ///
  final int defaultTimerOptionIndex;

  @override
  ConsumerState<CameraTimerOptionsWD> createState() => _CameraTimerOptionsWDState();
}

class _CameraTimerOptionsWDState extends ConsumerState<CameraTimerOptionsWD> {
  late final List<TimerOptionModel> timerOptionModelsClient;
  late final bool isUseDefaultChildren;

  @override
  void initState() {
    super.initState();

    isUseDefaultChildren = widget.timerOptions == null;
    timerOptionModelsClient = [];

    /// Convert [TimerOption] into [TimerOptionModel]
    ///
    if (widget.timerOptions != null) {
      for (int i = 0; i < widget.timerOptions!.length; i++) {
        final timerOptionClient = widget.timerOptions![i];
        timerOptionModelsClient.add(
          TimerOptionModel.fromUserTimer(option: timerOptionClient, indicator: i + 1),
        );
      }
    }

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      // update the index
      _updateTimerIndicator(value: widget.defaultTimerOptionIndex + 1);
    });
  }

  /// Initialize Map for Sliding Control if user does not provide [TimerOption] list
  ///
  Map<int, Widget> _initDefaultChildren({required int currentTimerIndicator}) {
    final timerNone = TimerOptionModel.none(indicator: 1);
    final threeSec = TimerOptionModel.threeSec(indicator: 2);
    final tenSec = TimerOptionModel.tenSec(indicator: 3);

    return {
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
    };
  }

  /// Initialize Map for Sliding Control if user provide [TimerOption] list
  ///
  Map<int, Widget> _initChildrenFromUser({required int currentTimerIndicator}) {
    final result = <int, Widget>{};
    for (var element in timerOptionModelsClient) {
      result.putIfAbsent(
        element.indicator,
        () => Text(
          element.label,
          style: element.indicator == currentTimerIndicator ? _activeTextStyle() : _inactiveTextStyle(),
        ),
      );
    }
    return result;
  }

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

  /// Handling update timer indicator by passed 1-based value
  ///
  void _updateTimerIndicator({required int value}) {
    if (isUseDefaultChildren) {
      ref
          .read(timerCameraStateProvider.notifier)
          .updateTimerOptionIndicator(TimerOptionModel.fromIndicator(indicator: value));
      return;
    }
    ref.read(timerCameraStateProvider.notifier).updateTimerOptionIndicator(timerOptionModelsClient[value - 1]);
  }

  @override
  Widget build(BuildContext context) {
    final currentTimerIndicator = ref.watch(timerCameraStateProvider.select((value) => value.timerOptionIndicator));

    return CustomSlidingSegmentedControl(
      children: isUseDefaultChildren
          ? _initDefaultChildren(currentTimerIndicator: currentTimerIndicator)
          : _initChildrenFromUser(currentTimerIndicator: currentTimerIndicator),
      decoration: widget.timerOptionStyleParams.decoration ??
          BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(8),
          ),
      thumbDecoration: widget.timerOptionStyleParams.thumbDecoration ??
          BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
      initialValue: widget.defaultTimerOptionIndex + 1,
      duration: widget.timerOptionStyleParams.duration ?? const Duration(milliseconds: 150),
      curve: widget.timerOptionStyleParams.curve ?? Curves.easeInToLinear,
      isDisabled: ref.watch(timerCameraStateProvider.select((value) => value.isCounting)),
      onValueChanged: (value) {
        _updateTimerIndicator(value: value);
      },
    );
  }
}
