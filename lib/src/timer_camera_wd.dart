import 'package:flutter/material.dart';

import 'models/models.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class TimerCamera extends StatelessWidget {
  const TimerCamera({
    required this.onSubmit,
    required this.timerOptionStyleParamsModel,
    this.onCameraAccessDenied,
    // this.imageFormatGroup,
    // this.resolutionPreset,
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
    Key? key,
  }) : super(key: key);

  /// The callback function after successfully capturing image
  ///
  /// This's usually an update function after getting image from my package
  ///
  final OnCapturedImageCallback onSubmit;

  /// Callback function that is triggered when try to open camera with unauthorized access.
  ///
  final VoidCallback? onCameraAccessDenied;

  // final ResolutionPreset? resolutionPreset;
  // final ImageFormatGroup? imageFormatGroup;

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButtonWD(
            childOnNormal: backButtonOnNormal,
            childOnCaptured: backButtonOnCaptured,
          ),
          actions: [
            SwitchCameraButtonWD(
              buttonStyle: switchCameraButtonStyle,
              child: switchCameraButton,
            )
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            CameraScreenWD(
              onCameraAccessDenied: onCameraAccessDenied,
              // resolutionPreset: resolutionPreset,
              // imageFormatGroup: imageFormatGroup,
              imageFit: imageFit,
            ),
            Align(
              alignment: Alignment.center,
              child: CounterWD(textStyle: counterTextStyle),
            ),
            Align(
              alignment: captureButtonAlignment ?? Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: CaptureButtonWD(
                  onSubmit: onSubmit,
                  childOnNormal: onNormalButton,
                  childOnCounting: onCountingButton,
                  childOnCaptured: onCapturedButton,
                ),
              ),
            ),
            Align(
              alignment: timerOptionAlignment ?? Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 120),
                child: CameraTimerOptionsWD(
                  timerOptionStyleParams: timerOptionStyleParamsModel,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
