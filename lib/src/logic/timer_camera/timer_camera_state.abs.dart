import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_camera_state.abs.freezed.dart';

@freezed
class TimerCameraState with _$TimerCameraState {
  const TimerCameraState._();

  factory TimerCameraState.normal({
    required final CameraController cameraController,
    @Default(0) final int cameraOptionIndex,
    final XFile? capturedImage,
  }) = _TimerCameraStateNormal;

  factory TimerCameraState.switching() = _TimerCameraStateSwitching;

  bool get isNormal => this is _TimerCameraStateNormal;
  bool get isSwitching => this is _TimerCameraStateSwitching;
}
