import 'package:camera/camera.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/utils.dart';
import 'timer_camera.dart';

class TimerCameraStateNotifier extends StateNotifier<TimerCameraState> {
  TimerCameraStateNotifier()
      : super(
          TimerCameraState(
            timerOption: TimerOption.none(),
            cameraController: CameraController(
              CameraOptions.list[0],
              ResolutionPreset.ultraHigh,
              enableAudio: false,
              imageFormatGroup: ImageFormatGroup.yuv420,
            ),
          ),
        );

  Future<void> startCounting() async {
    state = state.copyWith(isCounting: true, counter: state.timerOption.startCounter);

    int c = state.timerOption.startCounter;
    while (c > 0) {
      await Future.delayed(const Duration(seconds: 1));
      c--;
      state = state.copyWith(counter: c);
    }

    final XFile image = await state.cameraController.takePicture();

    state = state.copyWith(capturedImage: image);

    _stopCounting();
  }

  void _stopCounting() {
    state = state.copyWith(isCounting: false, counter: 0);
  }

  void updateCameraController({
    TimerOption? timerOption,
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
