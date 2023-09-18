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
  final Widget? backButton,
  final ButtonStyle? backButtonStyle,
  final Widget? switchCameraButton,
  final ButtonStyle? switchCameraButtonStyle,
  final Alignment? captureButtonAlignment,
  final Widget? onNormalButton,
  final Widget? onCountingButton,
  final Widget? onCapturedButton,
  final Alignment? timerOptionAlignment,
  final TimerOptionStyleParamsModel? timerOptionStyleParamsModel,
  final TextStyle? counterTextStyle,
}) async {
  availableCameras().then((value) {
    CameraOptions.list = value;

    showModalBottomSheet(
      context: context,
      enableDrag: enableDrag,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => ProviderScope(
        child: TimerCamera(
          onSubmit: onSubmit,
          onCameraAccessDenied: onCameraAccessDenied,
          // resolutionPreset: resolutionPreset,
          // imageFormatGroup: imageFormatGroup,
          imageFit: imageFit,
          backButton: backButton,
          backButtonStyle: backButtonStyle,
          switchCameraButton: switchCameraButton,
          switchCameraButtonStyle: switchCameraButtonStyle,
          captureButtonAlignment: captureButtonAlignment,
          timerOptionAlignment: timerOptionAlignment,
          timerOptionStyleParamsModel: timerOptionStyleParamsModel ?? const TimerOptionStyleParamsModel(),
          counterTextStyle: counterTextStyle,
        ),
      ),
    );
  });
}
