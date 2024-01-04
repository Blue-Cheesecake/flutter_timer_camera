import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models/models.dart';
import 'timer_camera_wd.dart';
import 'utils/utils.dart';

void showTimerCamera({
  required final BuildContext context,
  required final OnCapturedImageCallback onSubmit,
  final bool enableDrag = false,
  final VoidCallback? onCameraAccessDenied,
  // final ResolutionPreset? resolutionPreset,
  // final ImageFormatGroup? imageFormatGroup,
  final BoxFit? imageFit,
  final Widget? backButtonOnNormal,
  final Widget? backButtonOnCaptured,
  final Widget? switchCameraButton,
  final ButtonStyle? switchCameraButtonStyle,
  final Alignment? captureButtonAlignment,
  final Widget? onNormalButton,
  final Widget? onCountingButton,
  final Widget? onCapturedButton,
  final Alignment? timerOptionAlignment,
  final TimerOptionStyleParamsModel? timerOptionStyleParamsModel,
  final TextStyle? counterTextStyle,
  final List<TimerOption>? timerOptions,
  final int defaultTimerOptionIndex = 0,
  final bool isScrollControlled = false,
  final bool useSafeArea = false,
  final bool isDismissble = true,
  final bool useRootNavigator = false,
}) async {
  if (timerOptions != null) {
    assert(defaultTimerOptionIndex < timerOptions.length);
  } else {
    // Use 3 because the default timer option
    assert(defaultTimerOptionIndex < 3);
  }

  availableCameras().then((value) {
    CameraOptions.list = value;

    showModalBottomSheet(
      context: context,
      enableDrag: enableDrag,
      isScrollControlled: isScrollControlled,
      useSafeArea: useSafeArea,
      isDismissible: isDismissble,
      useRootNavigator: useRootNavigator,
      builder: (context) => ProviderScope(
        child: TimerCamera(
          onSubmit: onSubmit,
          onCameraAccessDenied: onCameraAccessDenied,
          // resolutionPreset: resolutionPreset,
          // imageFormatGroup: imageFormatGroup,
          imageFit: imageFit,
          backButtonOnNormal: backButtonOnNormal,
          backButtonOnCaptured: backButtonOnCaptured,
          switchCameraButton: switchCameraButton,
          switchCameraButtonStyle: switchCameraButtonStyle,
          captureButtonAlignment: captureButtonAlignment,
          onNormalButton: onNormalButton,
          onCountingButton: onCountingButton,
          onCapturedButton: onCapturedButton,
          timerOptionAlignment: timerOptionAlignment,
          timerOptionStyleParamsModel: timerOptionStyleParamsModel ?? const TimerOptionStyleParamsModel(),
          counterTextStyle: counterTextStyle,
          timerOptions: timerOptions,
          defaultTimerOptionIndex: defaultTimerOptionIndex,
        ),
      ),
    );
  });
}
