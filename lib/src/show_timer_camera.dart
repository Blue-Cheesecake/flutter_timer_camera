import 'package:flutter/material.dart';
import 'package:flutter_timer_camera/flutter_timer_camera.dart';

import 'timer_camera_wd.dart';

void showTimerCamera({
  required BuildContext context,
  required void Function(XFile capturedImage) onSubmit,
}) async {
  showModalBottomSheet(
    context: context,
    enableDrag: true,
    isScrollControlled: true,
    builder: (context) => TimerCamera(onSubmit: onSubmit),
  );
}
