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
    this.backButton,
    this.backButtonStyle,
    this.switchCameraButton,
    this.switchCameraButtonStyle,
    this.captureButtonAlignment,
    this.onNormalButton,
    this.onCountingButton,
    this.onCapturedButton,
    this.timerOptionAlignment,
    Key? key,
  }) : super(key: key);

  final OnCapturedImageCallback onSubmit;
  final VoidCallback? onCameraAccessDenied;
  // final ResolutionPreset? resolutionPreset;
  // final ImageFormatGroup? imageFormatGroup;
  final BoxFit? imageFit;
  final Widget? backButton;
  final ButtonStyle? backButtonStyle;
  final Widget? switchCameraButton;
  final ButtonStyle? switchCameraButtonStyle;
  final Alignment? captureButtonAlignment;
  final Widget? onNormalButton;
  final Widget? onCountingButton;
  final Widget? onCapturedButton;
  final Alignment? timerOptionAlignment;
  final TimerOptionStyleParamsModel timerOptionStyleParamsModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButtonWD(buttonStyle: backButtonStyle, child: backButton),
          actions: [
            SwitchCameraButtonWD(
              buttonStyle: backButtonStyle,
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
            const Align(
              alignment: Alignment.center,
              child: CounterWD(),
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
