import 'package:flutter/material.dart';

import 'utils/utils.dart';
import 'widgets/widgets.dart';

class TimerCamera extends StatelessWidget {
  const TimerCamera({
    required this.onSubmit,
    this.onCameraAccessDenied,
    // this.imageFormatGroup,
    // this.resolutionPreset,
    this.imageFit,
    this.backButton,
    this.backButtonStyle,
    this.switchCameraButton,
    this.switchCameraButtonStyle,
    this.captureButtonAlignment,
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
            Align(
              alignment: captureButtonAlignment ?? Alignment.bottomCenter,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 35),
                child: CaptureButtonWD(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
