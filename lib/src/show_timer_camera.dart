import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'timer_camera_wd.dart';
import 'utils/utils.dart';

void showTimerCamera({
  required BuildContext context,
  required OnCapturedImageCallback onSubmit,
}) async {
  availableCameras().then((value) {
    CameraOptions.list = value;

    showModalBottomSheet(
      context: context,
      enableDrag: true,
      isScrollControlled: true,
      builder: (context) => TimerCamera(onSubmit: onSubmit),
    );
  });
}
