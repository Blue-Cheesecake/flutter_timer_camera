import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_camera_state.abs.freezed.dart';

@freezed
class TimerCameraState with _$TimerCameraState {
  const TimerCameraState._();

  factory TimerCameraState({
    required final CameraController cameraController,
    final XFile? capturedImage,
    @Default(0) final int timerOptionCounter,
    @Default(1) final int timerOptionIndicator,
    @Default(false) final bool isCameraInitialized,
    @Default(0) final int cameraOptionIndex,
    @Default(false) final bool isSwitching,
    @Default(false) final bool isCounting,
  }) = _TimerCameraState;

  bool get isGotImage => capturedImage != null;
}
