import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timer_camera/flutter_timer_camera.dart';

import 'logic/logic.dart';
import 'utils/utils.dart';

class TimerCamera extends ConsumerStatefulWidget {
  const TimerCamera({
    required this.onSubmit,
    this.onCameraAccessDenied,
    this.imageFormatGroup,
    this.resolutionPreset,
    this.imageFit,
    this.backButton,
    Key? key,
  }) : super(key: key);

  final OnCapturedImageCallback onSubmit;
  final VoidCallback? onCameraAccessDenied;
  final ResolutionPreset? resolutionPreset;
  final ImageFormatGroup? imageFormatGroup;
  final BoxFit? imageFit;
  final Widget? backButton;

  @override
  ConsumerState<TimerCamera> createState() => _TimerCameraState();
}

class _TimerCameraState extends ConsumerState<TimerCamera> {
  late CameraController _cameraController;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();

    CameraDescription? cameraDescription =
        ref.read(timerCameraStateProvider.select((value) => value.cameraDescription));

    if (cameraDescription == null) {
      assert(CameraOptions.list.isNotEmpty, TimerCameraMessages.emptyCameraOptionsList);

      cameraDescription = CameraOptions.list[0];
    }

    _cameraController = CameraController(
      cameraDescription,
      widget.resolutionPreset ?? ResolutionPreset.high,
      enableAudio: false,
      imageFormatGroup: widget.imageFormatGroup ?? ImageFormatGroup.yuv420,
    );

    _initializeControllerFuture = _cameraController.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            if (widget.onCameraAccessDenied != null) widget.onCameraAccessDenied!();
            break;
          default:
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButtonWD(child: widget.backButton),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            CameraScreenWD(
              cameraController: _cameraController,
              initializeControllerFuture: _initializeControllerFuture,
              imageFit: widget.imageFit,
            ),
          ],
        ),
      ),
    );
  }
}
