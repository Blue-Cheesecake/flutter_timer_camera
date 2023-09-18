import 'dart:developer';

import 'package:camera/camera.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/models.dart';
import '../../utils/utils.dart';
import 'timer_camera.dart';

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

  void updateCameraInitializationStatus(bool value) {
    state = state.copyWith(isCameraInitialized: value);
  }

  void updateTimerOptionIndicator(TimerOptionModel timerOption) {
    state = state.copyWith(timerOptionIndicator: timerOption.indicator, timerOptionCounter: timerOption.startCounter);
  }

  Future<void> startCounting() async {
    state = state.copyWith(isCounting: true);

    int c = state.timerOptionCounter;
    while (c > 0) {
      await Future.delayed(const Duration(seconds: 1));
      c--;
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

  void _stopCounting() {
    state = state.copyWith(isCounting: false, timerOptionCounter: 0);
  }

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
