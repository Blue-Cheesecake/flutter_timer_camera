import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_camera_state.abs.freezed.dart';

@freezed
class TimerCameraState with _$TimerCameraState {
  factory TimerCameraState({
    CameraDescription? cameraDescription,
    XFile? capturedImage,
  }) = _TimerCameraState;
}
