import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/logic.dart';
import '../utils/utils.dart';
import 'widgets.dart';

class CameraScreenWD extends ConsumerWidget {
  const CameraScreenWD({
    this.onCameraAccessDenied,
    this.resolutionPreset,
    this.imageFormatGroup,
    this.imageFit,
    Key? key,
  }) : super(key: key);

  final VoidCallback? onCameraAccessDenied;
  final ResolutionPreset? resolutionPreset;
  final ImageFormatGroup? imageFormatGroup;
  final BoxFit? imageFit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final XFile? capturedImage = ref.watch(timerCameraStateProvider.select((value) => value.capturedImage));

    if (capturedImage != null) {
      return LayoutBuilder(
        builder: (context, constraints) => Image.file(
          File(capturedImage.path),
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          fit: imageFit ?? BoxFit.cover,
        ),
      );
    }

    final CameraController? cameraController = ref.watch(
      timerCameraStateProvider.select((value) => value.cameraController),
    );

    if (cameraController == null) {
      return const BlurBackgroundWD();
    }

    final Future<void> initializeControllerFuture = cameraController.initialize().catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            if (onCameraAccessDenied != null) onCameraAccessDenied!();
            return;
          default:
            break;
        }
      }
    });

    return FutureBuilder(
      future: initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          SchedulerBinding.instance.addPostFrameCallback((_) {
            ref.read(timerCameraStateProvider.notifier).updateCameraInitializationStatus(true);
          });
          return LayoutBuilder(
            builder: (context, constraints) => SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: CameraPreview(cameraController),
            ),
          );
        }

        SchedulerBinding.instance.addPostFrameCallback((_) {
          ref.read(timerCameraStateProvider.notifier).updateCameraInitializationStatus(false);
        });

        return const OnInitializingCameraWD();
      },
    );
  }
}
