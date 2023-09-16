import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'timer_camera.dart';

final timerCameraStateProvider = StateNotifierProvider<TimerCameraStateNotifier, TimerCameraState>((ref) {
  return TimerCameraStateNotifier();
});
