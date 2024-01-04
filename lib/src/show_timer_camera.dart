import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models/models.dart';
import 'timer_camera_wd.dart';
import 'utils/utils.dart';

/// Displays a bottom sheet with a camera view for capturing images with timer options.
///
/// The function presents a camera interface with customizable UI elements and behavior.
/// It uses a modal bottom sheet to display the camera and related controls.
///
/// Parameters:
///   - [context] - The BuildContext to show the bottom sheet in.
///   - [onSubmit] - Callback function that's called when an image is captured.
///   - [enableDrag] - Whether the bottom sheet can be dragged. Defaults to false.
///   - [onCameraAccessDenied] - Callback for when camera access is denied.
///   - [imageFit] - How the captured image should fit within the camera view.
///   - [backButtonOnNormal] - Custom widget for the back button in normal state.
///   - [backButtonOnCaptured] - Custom widget for the back button in captured state.
///   - [switchCameraButton] - Custom widget for the switch camera button.
///   - [switchCameraButtonStyle] - Style for the switch camera button.
///   - [captureButtonAlignment] - Alignment for the capture button.
///   - [onNormalButton] - Custom widget for the capture button in normal state.
///   - [onCountingButton] - Custom widget for the capture button in counting state.
///   - [onCapturedButton] - Custom widget for the capture button in captured state.
///   - [timerOptionAlignment] - Alignment for the timer options.
///   - [timerOptionStyleParamsModel] - Styling parameters for the timer options.
///   - [counterTextStyle] - Text style for the countdown timer.
///   - [timerOptions] - List of available timer options.
///   - [captureButtonPaddingHeight] - Padding height for the capture button.
///   - [timerOptionPaddingHeight] - Padding height for the timer options.
///   - [counterTextAlignment] - Alignment for the countdown timer text.
///   - [actionButtonPadding] - Padding for action buttons.
///   - [defaultTimerOptionIndex] - Default selected timer option index.
///   - [useSafeArea] - Whether to respect safe area insets. Defaults to true.
///   - [isDismissble] - Whether the sheet can be dismissed. Defaults to true.
///   - [useRootNavigator] - Whether to use the root navigator for navigation. Defaults to false.
///
/// The function initializes the camera and presents a customizable UI for capturing images.
/// It provides options for timer-based image capture, customizing UI elements, and handling camera access.
void showTimerCamera({
  required final BuildContext context,
  required final OnCapturedImageCallback onSubmit,
  final bool enableDrag = false,
  final VoidCallback? onCameraAccessDenied,
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
  final double? captureButtonPaddingHeight,
  final double? timerOptionPaddingHeight,
  final Alignment? counterTextAlignment,
  final EdgeInsetsGeometry? actionButtonPadding,
  final int defaultTimerOptionIndex = 0,
  final bool useSafeArea = true,
  final bool isDismissble = true,
  final bool useRootNavigator = false,
}) async {
  if (timerOptions != null) {
    assert(defaultTimerOptionIndex < timerOptions.length);
  } else {
    // NOTE: Use 3 because the default timer option
    assert(defaultTimerOptionIndex < 3);
  }

  availableCameras().then((value) {
    CameraOptions.list = value;

    showModalBottomSheet(
      context: context,
      enableDrag: enableDrag,
      isScrollControlled: true,
      useSafeArea: useSafeArea,
      isDismissible: isDismissble,
      useRootNavigator: useRootNavigator,
      barrierColor: Colors.black,
      backgroundColor: Colors.black,
      shape: const RoundedRectangleBorder(
        side: BorderSide(width: 1, color: Colors.black),
      ),
      builder: (context) => ProviderScope(
        child: TimerCamera(
          onSubmit: onSubmit,
          onCameraAccessDenied: onCameraAccessDenied,
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
          captureButtonPaddingHeight: captureButtonPaddingHeight,
          timerOptionPaddingHeight: timerOptionPaddingHeight,
          counterTextAlignment: counterTextAlignment,
          actionsButtonPadding: actionButtonPadding,
        ),
      ),
    );
  });
}
