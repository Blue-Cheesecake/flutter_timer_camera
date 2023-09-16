import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'timer_camera_wd.dart';
import 'utils/utils.dart';

void showTimerCamera({
  required BuildContext context,
  required OnCapturedImageCallback onSubmit,
  final VoidCallback? onCameraAccessDenied,
  final ResolutionPreset? resolutionPreset,
  final ImageFormatGroup? imageFormatGroup,
  final BoxFit? imageFit,
}) async {
  availableCameras().then((value) {
    CameraOptions.list = value;

    showModalBottomSheet(
      context: context,
      enableDrag: true,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => ProviderScope(
        child: TimerCamera(
          onSubmit: onSubmit,
          onCameraAccessDenied: onCameraAccessDenied,
          resolutionPreset: resolutionPreset,
          imageFormatGroup: imageFormatGroup,
          imageFit: imageFit,
        ),
      ),
    );
  });
}
