import 'package:camera/camera.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/utils.dart';
import 'timer_camera.dart';

class TimerCameraStateNotifier extends StateNotifier<TimerCameraState> {
  TimerCameraStateNotifier()
      : super(
          TimerCameraState.normal(
            timerOption: TimerOption.none(),
            cameraController: CameraController(
              CameraOptions.list[0],
              ResolutionPreset.ultraHigh,
              enableAudio: false,
              imageFormatGroup: ImageFormatGroup.yuv420,
            ),
          ),
        );

  void updateCameraController({
    ResolutionPreset? resolutionPreset,
    ImageFormatGroup? imageFormatGroup,
    int? cameraOptionIndex,
  }) {
    state = TimerCameraState.normal(
      timerOption: TimerOption.none(),
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
    final resolutionPreset =
        state.whenOrNull(normal: (cameraController, _, __, ___, ____) => cameraController.resolutionPreset)!;
    final imageFormatGroup =
        state.whenOrNull(normal: (cameraController, _, __, ___, ____) => cameraController.imageFormatGroup)!;
    int cameraIndex = state.whenOrNull(
      normal: (_, __, cameraOptionIndex, ___, ____) => cameraOptionIndex,
    )!;

    state = TimerCameraState.switching();

    Future.delayed(const Duration(milliseconds: 100)).then((_) {
      updateCameraController(
        resolutionPreset: resolutionPreset,
        imageFormatGroup: imageFormatGroup,
        cameraOptionIndex: cameraIndex == 0 ? 1 : 0,
      );
    });
  }
}
