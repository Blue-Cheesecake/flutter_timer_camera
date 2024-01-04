import 'package:flutter/material.dart';

import 'models/models.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class TimerCamera extends StatelessWidget {
  const TimerCamera({
    required this.onSubmit,
    required this.timerOptionStyleParamsModel,
    required this.defaultTimerOptionIndex,
    this.onCameraAccessDenied,
    this.imageFit,
    this.backButtonOnNormal,
    this.backButtonOnCaptured,
    this.switchCameraButton,
    this.switchCameraButtonStyle,
    this.captureButtonAlignment,
    this.onNormalButton,
    this.onCountingButton,
    this.onCapturedButton,
    this.timerOptionAlignment,
    this.counterTextStyle,
    this.timerOptions,
    this.captureButtonPaddingHeight,
    this.timerOptionPaddingHeight,
    this.counterTextAlignment,
    this.actionsButtonPadding,
    super.key,
  });

  /// The callback function after successfully capturing image
  ///
  /// This's usually an update function after getting image from my package
  ///
  final OnCapturedImageCallback onSubmit;

  /// Callback function that is triggered when try to open camera with unauthorized access.
  ///
  final VoidCallback? onCameraAccessDenied;

  /// Specifies how the captured image should fit within the bounds of the camera view.
  ///
  final BoxFit? imageFit;

  /// Custom widget for the back button.
  ///
  /// No need to put any [GestureDetector] or [InkWell]. Just pure widget without handling press
  final Widget? backButtonOnNormal;

  /// Style for the back button.
  ///
  /// No need to put any [GestureDetector] or [InkWell]. Just pure widget without handling press
  final Widget? backButtonOnCaptured;

  /// Custom widget for the switch camera button.
  ///
  final Widget? switchCameraButton;

  /// Style for the switch camera button.
  ///
  final ButtonStyle? switchCameraButtonStyle;

  /// Alignment for the capture button.
  ///
  final Alignment? captureButtonAlignment;

  /// Custom widget to display when the capture button is in its normal state.
  ///
  final Widget? onNormalButton;

  /// Custom widget to display when the capture button is counting down.
  ///
  final Widget? onCountingButton;

  /// Custom widget to display after the image has been captured.
  ///
  final Widget? onCapturedButton;

  /// Alignment for the timer options.
  ///
  final Alignment? timerOptionAlignment;

  /// Styling parameters for the timer options.
  ///
  final TimerOptionStyleParamsModel timerOptionStyleParamsModel;

  /// Text style for the counter timer display.
  ///
  final TextStyle? counterTextStyle;

  /// The List of TimerOption that will be displayed on [CameraScreenWD]
  ///
  /// The position of timer will be displayed from left to right.
  ///
  /// If this's not provided, the default option will be used
  final List<TimerOption>? timerOptions;

  /// The default index for Timer list
  ///
  final int defaultTimerOptionIndex;

  /// The padding height of capture button from bottom
  ///
  final double? captureButtonPaddingHeight;

  /// The padding height of timer option from captured bottom
  ///
  final double? timerOptionPaddingHeight;

  /// The alignment of counter text
  ///
  final Alignment? counterTextAlignment;

  /// The padding of actions button
  ///
  final EdgeInsetsGeometry? actionsButtonPadding;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CameraScreenWD(
          onCameraAccessDenied: onCameraAccessDenied,
          // resolutionPreset: resolutionPreset,
          // imageFormatGroup: imageFormatGroup,
          imageFit: imageFit,
        ),
        Padding(
          padding: actionsButtonPadding ?? EdgeInsets.zero,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              BackButtonWD(
                childOnNormal: backButtonOnNormal,
                childOnCaptured: backButtonOnCaptured,
              ),
              SwitchCameraButtonWD(
                buttonStyle: switchCameraButtonStyle,
                child: switchCameraButton,
              )
            ],
          ),
        ),
        Align(
          alignment: counterTextAlignment ?? Alignment.center,
          child: CounterWD(textStyle: counterTextStyle),
        ),
        Align(
          alignment: captureButtonAlignment ?? Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: captureButtonPaddingHeight ?? 35),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CameraTimerOptionsWD(
                  timerOptionStyleParams: timerOptionStyleParamsModel,
                  timerOptions: timerOptions,
                  defaultTimerOptionIndex: defaultTimerOptionIndex,
                ),
                SizedBox(height: timerOptionPaddingHeight ?? 20),
                CaptureButtonWD(
                  onSubmit: onSubmit,
                  childOnNormal: onNormalButton,
                  childOnCounting: onCountingButton,
                  childOnCaptured: onCapturedButton,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
