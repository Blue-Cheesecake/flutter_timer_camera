import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'timer_camera.dart';

final timerCameraStateProvider = StateNotifierProvider.autoDispose<TimerCameraStateNotifier, TimerCameraState>((ref) {
  return TimerCameraStateNotifier();
});
