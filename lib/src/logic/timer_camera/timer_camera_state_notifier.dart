import 'dart:developer';

import 'package:camera/camera.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/models.dart';
import '../../utils/utils.dart';
import 'timer_camera.dart';

/// Manages the state of the camera timer.
///
class TimerCameraStateNotifier extends StateNotifier<TimerCameraState> {
  TimerCameraStateNotifier()
      : super(
          TimerCameraState(
            cameraController: CameraController(
              CameraOptions.list[0],
              ResolutionPreset.ultraHigh,
              enableAudio: false,
              imageFormatGroup: ImageFormatGroup.yuv420,
            ),
          ),
        );

  /// Updates the camera initialization status.
  ///
  /// This will be called immediately after user entered the camera screen,
  void updateCameraInitializationStatus(bool value) {
    state = state.copyWith(isCameraInitialized: value);
  }

  /// Updates the timer option indicator.
  ///
  /// Called on [CameraTimerOptionsWD] to update the option after user selected,
  void updateTimerOptionIndicator(TimerOptionModel timerOption) {
    state = state.copyWith(timerOptionIndicator: timerOption.indicator, timerOptionCounter: timerOption.startCounter);
  }

  /// Empties the captured image.
  ///
  /// Called on [CaptureButtonCapturedWD] to reject the captured image.
  void emptyCapturedImage() {
    state = state.copyWith(capturedImage: null);
  }

  /// Starts the timer countdown and captures an image when the timer reaches zero.
  ///
  /// Once this method is called until the timer reaches zero, this methhod should not be called again.
  Future<void> startCounting() async {
    state = state.copyWith(isCounting: true);

    int c = state.timerOptionCounter;
    while (c > 0) {
      await Future.delayed(const Duration(seconds: 1));
      c--;
      // NOTE: prevent modifiying state after called dispose
      if (!mounted) {
        return;
      }
      state = state.copyWith(timerOptionCounter: c);
    }

    try {
      final XFile image = await state.cameraController.takePicture();
      state = state.copyWith(capturedImage: image);
    } catch (e) {
      log(e.toString());
    }

    _stopCounting();
  }

  /// Stops the timer countdown.
  ///
  /// However, it is not recommeneded to call this method while timer is not reached to zero.
  void _stopCounting() {
    state = state.copyWith(isCounting: false, timerOptionCounter: 0);
  }

  /// Updates the camera controller with new settings.
  ///
  /// This will be used for switching camera since the source of camera is changed.
  void updateCameraController({
    TimerOptionModel? timerOption,
    ResolutionPreset? resolutionPreset,
    ImageFormatGroup? imageFormatGroup,
    int? cameraOptionIndex,
  }) {
    state = state.copyWith(
      isSwitching: false,
      cameraOptionIndex: cameraOptionIndex ?? 0,
      cameraController: CameraController(
        CameraOptions.list[cameraOptionIndex ?? 0],
        resolutionPreset ?? ResolutionPreset.ultraHigh,
        enableAudio: false,
        imageFormatGroup: imageFormatGroup ?? ImageFormatGroup.yuv420,
      ),
    );
  }

  /// Switches the camera.
  ///
  void switchCamera() {
    final resolutionPreset = state.cameraController.resolutionPreset;
    final imageFormatGroup = state.cameraController.imageFormatGroup;
    int cameraIndex = state.cameraOptionIndex;

    Future.delayed(const Duration(milliseconds: 100)).then((_) {
      updateCameraController(
        resolutionPreset: resolutionPreset,
        imageFormatGroup: imageFormatGroup,
        cameraOptionIndex: cameraIndex == 0 ? 1 : 0,
      );
    });
  }
}
