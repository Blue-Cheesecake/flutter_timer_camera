import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/utils.dart';

part 'timer_camera_state.abs.freezed.dart';

@freezed
class TimerCameraState with _$TimerCameraState {
  const TimerCameraState._();

  factory TimerCameraState({
    required final CameraController cameraController,
    required final TimerOption timerOption,
    final XFile? capturedImage,
    @Default(0) final int cameraOptionIndex,
    @Default(false) final bool isSwitching,
    @Default(false) final bool isCounting,
    @Default(0) final int counter,
  }) = _TimerCameraState;

  bool get isGotImage => const TimerCameraState._().capturedImage != null;
}
